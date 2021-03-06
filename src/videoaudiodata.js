'use strict';
console.log('start execution of vad module');
// we are using a rescript react widget, so bring into scope.
var VideoStd = require('./Widgets/VideoStd.bs.js');

const { LocalDataTrack, connect, createLocalTracks } = require('twilio-video');
const ch = require('color-hash').default;
const colorHash = new ch();

const canvas = document.getElementById('canvas');
//const connectButton = document.getElementById('connect');
//const disconnectButton = document.getElementById('disconnect');
const form = document.getElementById('form');
//const identityInput = document.getElementById('identity');
//const nameInput = document.getElementById('name');
//const participants = document.getElementById('participants');
// move this assignment so it happens after dom is set up JB 20/05/21
//const video = document.querySelector('#local-participant > video');
//console.log('check connect id exists:');
// blows up
//console.log(document.getElementById('connect').id);

/**
 * Setup a LocalDataTrack to transmit mouse coordinates.
 * @returns {LocalDataTrack} dataTrack
 */
function setupLocalDataTrack() {
  const dataTrack = new LocalDataTrack();

  // let mouseDown;
  // let mouseCoordinates;

  // window.addEventListener('mousedown', () => {
  //   mouseDown = true;
  // }, false);

  // window.addEventListener('mouseup', () => {
  //   mouseDown = false;
  // }, false);

  // window.addEventListener('mousemove', event => {
  //   const { pageX: x, pageY: y } = event;
  //   mouseCoordinates = { x, y };

  //   if (mouseDown) {
  //     const color = colorHash.hex(dataTrack.id);
  //     drawCircle(canvas, color, x, y);

  //     dataTrack.send(JSON.stringify({
  //       mouseDown,
  //       mouseCoordinates
  //     }));

  //     console.log('Send JSON:');
  //     console.log(JSON.stringify({
  //       mouseDown,
  //       mouseCoordinates
  //     }));
  //   }
  // }, false);

  // // use lexical scope, not function scope
  // let touchstartHandler = (e) => {
  //   const mouseDown = true;
  //   let mouseCoordinates = {};
  //   document.title = 'touchstart';
  //   mouseCoordinates.x = e.targetTouches[0].pageX;
  //   mouseCoordinates.y = 200;

  //   dataTrack.send(JSON.stringify({
  //     mouseDown,
  //     mouseCoordinates
  //   }));

  // }

  // function touchendHandler(e) {
  //   document.title = 'touchend';
  // }

  // function touchmoveHandler(e) {
  //   const mouseDown = true;
  //   let x = 0;
  //   let mouseCoordinates = {};
  //   document.title = e.targetTouches[0].pageX;
  //   const color = colorHash.hex(dataTrack.id);
  //   drawCircle(canvas, color, e.targetTouches[0].pageX, e.targetTouches[0].pageY);

  //   mouseCoordinates.x = e.targetTouches[0].pageX;
  //   mouseCoordinates.y = e.targetTouches[0].pageY;

  //   dataTrack.send(JSON.stringify({
  //     mouseDown,
  //     mouseCoordinates
  //   }));

  //   //e.preventDefault();

  // }


  // // added JB 
  // window.addEventListener('touchstart', touchstartHandler, false);
  // window.addEventListener('touchend', touchendHandler, false);
  // window.addEventListener('touchmove', touchmoveHandler, false);

  // setup a global reference to this datatrack, so we can call
  // the .send method
  window.localDataTrack = dataTrack;

  return dataTrack;
}

/**
 * Setup a LocalAudioTrack and LocalVideoTrack to render to a <video> element.
 * @param {HTMLVideoElement} video
 * @returns {Promise<Array<LocalAudioTrack|LocalVideoTrack>>} audioAndVideoTrack
 */
async function setupLocalAudioAndVideoTracks() {
  const video = document.querySelector('#local-participant > video');
  const audioAndVideoTrack = await createLocalTracks();
  audioAndVideoTrack.forEach(track => track.attach(video));
  return audioAndVideoTrack;
}

/**
 * Get an Access Token for the specified identity.
 * @param {string} identity
 * @returns {Promise<string>} token
 */
async function getToken(identity) {
  const response = await fetch(`/token?identity=${encodeURIComponent(identity)}`);
  if (!response.ok) {
    throw new Error('Unable to fetch Access Token');
  }
  return response.text();
}

let connectAttempt;
let room;

/**
 * Update the UI in response to disconnecting.
 * @returns {void}
 */
function didDisconnect(error) {
  if (room) {
    if (error) {
      console.error(error);
    }
    room.participants.forEach(participantDisconnected);
  }
  document.getElementById('identity').disabled = false;
  document.getElementById('name').disabled = false;
  document.getElementById('connect').disabled = false;
  document.getElementById('disconnect').disabled = true;
}

/**
 * Run the app.
 * @returns {Promise<void>}
 */
async function main() {
  const dataTrack = setupLocalDataTrack();
  const audioAndVideoTrack = await setupLocalAudioAndVideoTracks();

  // not required JB 18/05/21
  // canvas.width = window.innerWidth;
  // canvas.height = window.innerHeight;
  // window.addEventListener('resize', () => {
  //   canvas.width = window.innerWidth;
  //   canvas.height = window.innerHeight;
  // });

  const tracks = audioAndVideoTrack.concat(dataTrack);

  document.getElementById('connect').addEventListener('click', async event => {
    event.preventDefault();

    document.getElementById('identity').disabled = true;
    document.getElementById('name').disabled = true;
    document.getElementById('connect').disabled = true;
    document.getElementById('disconnect').disabled = false;

    try {
      const identity = document.getElementById('identity').value;
      const name = document.getElementById('name').value;
      const identityExtended = identity + '_' + name

      console.log('Getting Access Token...');
      const token = await getToken(identityExtended);
      console.log(`Got Access Token "${token}"`);

      if (token.search(/error/i) !== -1) {
        // rollback
        document.getElementById('identity').disabled = false;
        document.getElementById('name').disabled = false;
        document.getElementById('connect').disabled = false;
        document.getElementById('disconnect').disabled = true;
        alert(token);
      } else {
        console.log('Attempting to connect...');
        connectAttempt = connect(token, {
          name,
          tracks
        });

        room = await connectAttempt;
        console.log(`Connected to Room "${room.name}"`);

        // NOTE(mroberts): Save a reference to `room` on `window` for debugging.
        window.room = room;

        room.once('disconnected', didDisconnect);

        room.participants.forEach(participantConnected);
        room.on('participantConnected', participantConnected);
        room.on('participantDisconnected', participantDisconnected);
      }

    } catch (error) {
      didDisconnect(error);
    }
  });

  document.getElementById('disconnect').addEventListener('click', event => {
    event.preventDefault();

    if (connectAttempt) {
      connectAttempt.cancel();
    }

    if (room) {
      room.disconnect();
    }

    didDisconnect();
  });
}

/**
 * Handle a connected RemoteParticipant.
 * @param {RemoteParticipant} participant
 * @retruns {void}
 */
function participantConnected(participant) {
  //const participantDiv = document.createElement('div');
  //participantDiv.className = 'participant';
  //participantDiv.id = participant.sid;
  //const videoElement = document.createElement('video');
  //participantDiv.appendChild(videoElement);
  //document.getElementById('participants').appendChild(participantDiv);
  // JB 25/05/21
  // set up the global variable to pass message
  window.remoteparticipantid = participant.sid;
  // trigger the action
  document.getElementById('addremoteparticipantsid').click();


  participant.tracks.forEach(publication => trackPublished(participant, publication));
  participant.on('trackPublished', publication => trackPublished(participant, publication));
  participant.on('trackUnpublished', publication => trackUnpublished(participant, publication));
}

/**
 * Handle a disconnnected RemoteParticipant.
 * @param {RemoteParticipant} participant
 * @returns {void}
 */
function participantDisconnected(participant) {
  console.log(`RemoteParticipant "${participant.identity}" disconnected`);
  // const participantDiv = document.getElementById(participant.sid);
  // if (participantDiv) {
  //   participantDiv.remove();
  // }
  // set up the global variable to pass message
  window.remoteparticipantid = participant.sid;
  // trigger the action
  document.getElementById('removeremoteparticipantsid').click();
}

/**
 * Handle a published Track.
 * @param {RemoteParticipant} participant
 * @param {RemoteTrackPublication} publication
 */
function trackPublished(participant, publication) {
  console.log(`RemoteParticipant "${participant.identity}" published ${publication.kind} Track ${publication.trackSid}`);
  if (publication.isSubscribed) {
    trackSubscribed(participant, publication.track);
  } else {
    publication.on('subscribed', track => trackSubscribed(participant, track));
  }
  publication.on('unsubscribed', track => trackUnsubscribed(participant, track));
}

/**
 * Handle a subscribed Track.
 * @param {RemoteParticipant} participant
 * @param {Track} track
 * @returns {void}
 */
function trackSubscribed(participant, track) {
  console.log(`LocalParticipant subscribed to RemoteParticipant "${participant.identity}"'s ${track.kind} Track ${track.sid}`);
  if (track.kind === 'audio' || track.kind === 'video') {
    track.attach(`#${participant.sid} > video`);
  } else if (track.kind === 'data') {
    track.on('message', data => {
      // beware infinite stream of identical state so called updates
      //console.log(`message received from participant ${participant.identity}`);
      const receivedGameState = JSON.parse(data);
      console.log('receivedGameState');
      console.log(receivedGameState);
      // make state visible to Rescript via window object
      window.receivedGameState = receivedGameState;
      // trigger an action to check for change of state and only update if changed!
      document.getElementById("replacegamestatefromremote").click()
    });
  }
}

/**
 * Handle an unpublished Track.
 * @param {RemoteParticipant} participant
 * @param {RemoteTrackPublication} publication
 */
function trackUnpublished(participant, publication) {
  console.log(`RemoteParticipant "${participant.identity}" unpublished ${publication.kind} Track ${publication.trackSid}`);
}

/**
 * Handle an unsubscribed Track.
 * @param {RemoteParticipant} participant
 * @param {Track} track
 * @returns {void}
 */
function trackUnsubscribed(participant, track) {
  console.log(`LocalParticipant unsubscribed from RemoteParticipant "${participant.identity}"'s ${track.kind} Track ${track.sid}`);
  if (track.kind === 'audio' || track.kind === 'video') {
    track.detach();
  }
}

/**
 * Draw a circle on the <canvas> element.
 * @param {HTMLCanvasElement} canvas
 * @param {string} color
 * @param {number} x
 * @param {number} y
 * @returns {void}
 */
function drawCircle(canvas, color, x, y) {
  const context = canvas.getContext('2d');
  context.beginPath();
  context.arc(
    x,
    y,
    10,
    0,
    2 * Math.PI,
    false);
  context.fillStyle = color;
  context.fill();
  context.strokeStyle = '#000000';
  context.stroke();
}

//console.log('about to call main()');
// Go!
//main().catch(console.error);
//console.log('main() has been called');

// make main visible outside of module
exports.main = main;
