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
type state = {
  // these three fields reflect current screen window configuration
  innerHeight: int,
  isLandscape: bool,
  videoContainerIds: array<string>,
}

type action =
  | Inc
  | Dec
  | Reset
  | MultByN(int)
  | MultByNM(int, int)
  | ResizeComponents(int, bool)
  | AddRemoteParticipantSid(string)
  | RemoveRemoteParticipantSid(string)

let initialState = {
  // when window load event fires, innerheight is updated
  innerHeight: 0,
  isLandscape: true,
  videoContainerIds: ["local-participant"],
}

let reducer = (state, action) => {
  switch action {
  | Inc => {
      ...state,
      innerHeight: state.innerHeight + 1,
    }
  | Dec => {
      ...state,
      innerHeight: state.innerHeight - 1,
    }
  | Reset => {
      ...state,
      innerHeight: 0,
    }
  | MultByN(n) => {
      ...state,
      innerHeight: state.innerHeight * n,
    }
  | MultByNM(i, j) => {
      ...state,
      innerHeight: state.innerHeight * i * j,
    }
  | ResizeComponents(n, bln) => {
      ...state,
      innerHeight: n,
      isLandscape: bln,
    }
  | AddRemoteParticipantSid(id) => {
      let videoContainerIds = Js.Array.concat([id], state.videoContainerIds)
      let newState = {
        ...state,
        videoContainerIds: videoContainerIds,
      }

      //Js.log(newState)
      newState
    }
  | RemoveRemoteParticipantSid(id) => {
      let copyOfVideoContainerIds = Js.Array.copy(state.videoContainerIds)
      let index = Js.Array.findIndex(x => x == id, copyOfVideoContainerIds)
      Js.log("index:" ++ Belt.Int.toString(index))
      let _dummy =
        index == -1
          ? []
          : Js.Array.spliceInPlace(~pos=index, ~remove=1, ~add=[], copyOfVideoContainerIds)
      let newState = {
        ...state,
        videoContainerIds: copyOfVideoContainerIds,
      }
      Js.log(newState)
      newState
    }
  }
}
