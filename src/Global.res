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
  // these two fields reflect current screen window configuration
  innerHeight: int,
  isLandscape: bool,
}

type action =
  | Inc
  | Dec
  | Reset
  | MultByN(int)
  | MultByNM(int, int)
  | ResizeComponents(int, bool)

let initialState = {
  // when window load event fires, innerheight is updated
  innerHeight: 0,
  isLandscape: true,
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
      innerHeight: n,
      isLandscape: bln,
    }
  }
}
