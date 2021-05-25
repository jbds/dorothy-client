// The purpose of this top level module is three fold:
// a) Write out the document title with a version number
// b) Render the whole App to the DOM
// c) After delay to allow DOM to be created, call Twilio api using main()

@module("./videoaudiodata.js") external main: unit => Js.Promise.t<'a> = "main"
@val external w: 'a = "window"
@val external doc: 'a = "document"
@val external setTimeout: (unit => unit, int) => float = "setTimeout"

// change title in index.html too, so that we can avoid js cache when update needed, and check same
doc["title"] = "Dorothy v0.12"

//test only
//w["remoteparticipantid"] = "456ABC"

// fix iOS Safari and Chrome feature/bug which reports vh incorrectly
// by injecting the true window.innerHeight value to use in the app
switch ReactDOM.querySelector("#root") {
| Some(root) => ReactDOM.render(<App />, root)
| None => Js.log("Cannot find element with id='root'")
}

let delayedaction = () => {
  Js.log("after delay 2000ms")
  let _dummy = main()
}

let dummyId = setTimeout(delayedaction, 2000)
