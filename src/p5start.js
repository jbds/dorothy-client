'use strict';
var p5 = require('p5');
const P5SideEffect = require('./Modules/P5SideEffect.js');

const callbackFunctionForP5 = (p) => {
  // p5 library functions available via injected libary object p
  // decalare all other variables specific to drawing process
  // as properies of a 'global' object g
  const g = {};
  const w = window;
  // Map structure used to match 1 background image filename and 53 card filenames 
  // to full path and filenames
  g.imgMap = new Map();

  p.preload = () => {
    // preload runs once first
    g.imgMap.set('GB', p.loadImage('assets/green_baize.jpg'));
    // g.imgMap.set('1B', p.loadImage('assets/1B.svg'));
    // g.imgMap.set('AS', p.loadImage('assets/AS.svg'));
    // g.imgMap.set('KS', p.loadImage('assets/KS.svg'));
    // g.imgMap.set('QS', p.loadImage('assets/QS.svg'));
    // g.imgMap.set('JS', p.loadImage('assets/JS.svg'));
    // g.imgMap.set('TS', p.loadImage('assets/TS.svg'));
    // g.imgMap.set('9S', p.loadImage('assets/9S.svg'));
    // g.imgMap.set('8S', p.loadImage('assets/8S.svg'));
    // g.imgMap.set('7S', p.loadImage('assets/7S.svg'));
    // g.imgMap.set('6S', p.loadImage('assets/6S.svg'));
    // g.imgMap.set('5S', p.loadImage('assets/5S.svg'));
    // g.imgMap.set('4S', p.loadImage('assets/4S.svg'));
    // g.imgMap.set('3S', p.loadImage('assets/3S.svg'));
    // g.imgMap.set('2S', p.loadImage('assets/2S.svg'));
    // g.imgMap.set('AH', p.loadImage('assets/AH.svg'));
    // g.imgMap.set('KH', p.loadImage('assets/KH.svg'));
    // g.imgMap.set('QH', p.loadImage('assets/QH.svg'));
    // g.imgMap.set('JH', p.loadImage('assets/JH.svg'));
    // g.imgMap.set('TH', p.loadImage('assets/TH.svg'));
    // g.imgMap.set('9H', p.loadImage('assets/9H.svg'));
    // g.imgMap.set('8H', p.loadImage('assets/8H.svg'));
    // g.imgMap.set('7H', p.loadImage('assets/7H.svg'));
    // g.imgMap.set('6H', p.loadImage('assets/6H.svg'));
    // g.imgMap.set('5H', p.loadImage('assets/5H.svg'));
    // g.imgMap.set('4H', p.loadImage('assets/4H.svg'));
    // g.imgMap.set('3H', p.loadImage('assets/3H.svg'));
    // g.imgMap.set('2H', p.loadImage('assets/2H.svg'));
    // g.imgMap.set('AD', p.loadImage('assets/AD.svg'));
    // g.imgMap.set('KD', p.loadImage('assets/KD.svg'));
    // g.imgMap.set('QD', p.loadImage('assets/QD.svg'));
    // g.imgMap.set('JD', p.loadImage('assets/JD.svg'));
    // g.imgMap.set('TD', p.loadImage('assets/TD.svg'));
    // g.imgMap.set('9D', p.loadImage('assets/9D.svg'));
    // g.imgMap.set('8D', p.loadImage('assets/8D.svg'));
    // g.imgMap.set('7D', p.loadImage('assets/7D.svg'));
    // g.imgMap.set('6D', p.loadImage('assets/6D.svg'));
    // g.imgMap.set('5D', p.loadImage('assets/5D.svg'));
    // g.imgMap.set('4D', p.loadImage('assets/4D.svg'));
    // g.imgMap.set('3D', p.loadImage('assets/3D.svg'));
    // g.imgMap.set('2D', p.loadImage('assets/2D.svg'));
    // g.imgMap.set('AC', p.loadImage('assets/AC.svg'));
    // g.imgMap.set('KC', p.loadImage('assets/KC.svg'));
    // g.imgMap.set('QC', p.loadImage('assets/QC.svg'));
    // g.imgMap.set('JC', p.loadImage('assets/JC.svg'));
    // g.imgMap.set('TC', p.loadImage('assets/TC.svg'));
    // g.imgMap.set('9C', p.loadImage('assets/9C.svg'));
    // g.imgMap.set('8C', p.loadImage('assets/8C.svg'));
    // g.imgMap.set('7C', p.loadImage('assets/7C.svg'));
    // g.imgMap.set('6C', p.loadImage('assets/6C.svg'));
    // g.imgMap.set('5C', p.loadImage('assets/5C.svg'));
    // g.imgMap.set('4C', p.loadImage('assets/4C.svg'));
    // g.imgMap.set('3C', p.loadImage('assets/3C.svg'));
    // g.imgMap.set('2C', p.loadImage('assets/2C.svg'));
  }

  p.setup = () => {
    // waits for preload to complete, then runs once
    // TO DO allow for state.localDevice.isLandscape
    g.canvasWidth = p.windowHeight;
    g.canvasHeight = p.windowHeight;

    //get a handle on the canvas so we can adjust z-index
    g.cnv = p.createCanvas(g.canvasWidth, g.canvasHeight);
    // z-index has no effect unless we set position to absolute too
    g.cnv.style('position: absolute');
    g.cnv.style('z-index: 1');
    g.cnv.id('mycanvas');
    //let p5btn1 = p.select('#btn1');
    //p5btn1.mousePressed(changeBgColor);
    // init userState
    // w.userState = {
    //   tableRotationDegrees: 0,
    //   player: "?"
    // }
    // fetch default username from persistent store
    // document.getElementById('txtMyLoginName').value =
    //   localStorage.getItem('myLoginName');
  };

  p.draw = () => {
    // z-index of canvas is controlled by gameState
    //window.gameState.isBiddingCycle ? g.cnv.style('z-index: -1') : g.cnv.style('z-index: 1');
    // TO DO sort out why z-index has to change
    g.cnv.style('z-index: 1');
    // main loop repeats at frame rate
    p.image(g.imgMap.get('GB'), 0, 0, g.canvasWidth, g.canvasHeight)
    // SideEffect.drawCards(p, g, w, 'South');
    // SideEffect.drawCards(p, g, w, 'West');
    // SideEffect.drawCards(p, g, w, 'East');
    // SideEffect.drawCards(p, g, w, 'North');
    // SideEffect.drawCards(p, g, w, 'Discard');
    P5SideEffect.drawLabels(p, g, w);
  };

  p.windowResized = () => {
    g.canvasWidth = p.windowHeight;
    g.canvasHeight = p.windowHeight;
    p.resizeCanvas(g.canvasWidth, g.canvasHeight);
    console.log('p5 windowResized event');
  }

  p.mousePressed = () => {
    if (p.mouseX <= g.canvasWidth && p.mouseY <= g.canvasHeight) {
      //P5Event.mouseDecode(p, g, w);
      console.log('p5 mouse pressed in canvas area')
    }
  }

};

const p5CreateInstance = () => {
  console.log('create p5 instance');
  let myP5Instance = new p5(callbackFunctionForP5);
}

// make p5CreateInstance visible outside of module
exports.p5CreateInstance = p5CreateInstance;
