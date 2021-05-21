// The purpose of this top level module is three fold:
// a) Write out the document title with a version number
// b) On DOM window load or resize, (re)render the whole App
// and inject gIsLandcape to let render be screen-aspect-ratio specific
// c) After delay to allow DOM to be created, call Twilio api using main()

@module("./videoaudiodata.js") external main: unit => Js.Promise.t<'a> = "main"
@val external doc: 'a = "document"
@val external w: 'a = "window"
@val external setTimeout: (unit => unit, int) => float = "setTimeout"

// sync with index.html so that we can avoid js cache when update needed, and check same
doc["title"] = "Dorothy v0.05"

// render can be device orientation specific by injecting isLandscape to use in the app
// fix iOS Safari and Chrome feature/bug which reports vh incorrectly
// by injecting the true vh value to use in the app
let reRenderApp = (isLandscape, vhTrue) => {
  switch ReactDOM.querySelector("#root") {
  | Some(root) => ReactDOM.render(<App isLandscape vhTrue />, root)
  | None => Js.log("Cannot find element with id='root'")
  }
}

let renderAllOnLoadOrResize = () => {
  Js.log("fn renderAllOnLoadOrResize..")
  let isLandscape = w["innerHeight"] < w["innerWidth"]
  let vhTrue: float = w["innerHeight"] *. 0.01
  reRenderApp(isLandscape, vhTrue)
}

// track any size change
w["addEventListener"]("resize", _event => {
  Js.log("event window resize..")
  renderAllOnLoadOrResize()
})

// one off render at load
w["addEventListener"]("load", _event => {
  Js.log("event window load..")
  renderAllOnLoadOrResize()
})

let delayedaction = () => {
  Js.log("after delay 2000ms")
  let _dummy = main()
}

let dummyId = setTimeout(delayedaction, 2000)
