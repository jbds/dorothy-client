// need reference to window to listen for resize
@val external w: 'a = "window"
// mutable variables set by window event listeners below.
// values used as ResizeComponents action parameters in the rescript react component below
let innerHeightRef = ref(0)
let isLandscapeRef = ref(true)

let updateUIStateOnLoadOrResize = () => {
  // mutable assignments
  innerHeightRef := w["innerHeight"]
  isLandscapeRef := w["innerHeight"] < w["innerWidth"]
  Js.log(
    "innerHeight: " ++
    Belt.Int.toString(innerHeightRef.contents) ++
    " isLandscape: " ++
    Js.String2.make(isLandscapeRef.contents),
  )
  // fix iOS Safari and Chrome feature/bug which reports vh incorrectly
  // by dispatching the true window.innerHeight value as part of a resizecomponents action
  let _dummy = %raw(`
    document.getElementById("resizecomponents").click()
  `)
}

// update ui state values
w["addEventListener"]("resize", _event => {
  Js.log("event window resize..")
  updateUIStateOnLoadOrResize()
})

// initialize ui state values
w["addEventListener"]("load", _event => {
  Js.log("event window load..")
  updateUIStateOnLoadOrResize()
})

// Reducer related types use by App component *****************************
type localDevice = {
  // these three fields reflect current screen window configuration
  innerHeight: int,
  isLandscape: bool,
  videoContainerIds: array<string>,
}

type game = {count: int}

type state = {
  localDevice: localDevice,
  game: game,
}

type action =
  | ResizeComponents(int, bool)
  | AddRemoteParticipantSid(string)
  | RemoveRemoteParticipantSid(string)
  | TestChangeOfGameState(int)

let initialLocalDevice = {
  // when window load event fires, innerheight and isLandscape are updated
  // we init the video array to just the local participant
  // remote participants will be added and removed as they connect to and disconnect from the room
  innerHeight: 0,
  isLandscape: true,
  videoContainerIds: ["local-participant"],
}

let initialGame = {
  count: 0,
}

let initialState = {
  localDevice: initialLocalDevice,
  game: initialGame,
}

let reducer = (state, action) => {
  switch action {
  | ResizeComponents(n, bln) => {
      let localDevice = {...state.localDevice, innerHeight: n, isLandscape: bln}
      {
        ...state,
        localDevice: localDevice,
      }
    }
  | AddRemoteParticipantSid(id) => {
      let videoContainerIds = Js.Array.concat([id], state.localDevice.videoContainerIds)
      let localDevice = {...state.localDevice, videoContainerIds: videoContainerIds}
      {
        ...state,
        localDevice: localDevice,
      }
    }
  | RemoveRemoteParticipantSid(id) => {
      let copyOfVideoContainerIds = Js.Array.copy(state.localDevice.videoContainerIds)
      let index = Js.Array.findIndex(x => x == id, copyOfVideoContainerIds)
      Js.log("index:" ++ Belt.Int.toString(index))
      let _dummy =
        index == -1
          ? []
          : Js.Array.spliceInPlace(~pos=index, ~remove=1, ~add=[], copyOfVideoContainerIds)
      let localDevice = {...state.localDevice, videoContainerIds: copyOfVideoContainerIds}
      {
        ...state,
        localDevice: localDevice,
      }
    }
  | TestChangeOfGameState(n) => {
      let count = state.game.count + n
      let game = {count: count}
      {
        ...state,
        game: game,
      }
    }
  }
}
