// this region provides card table background of green baize,
// with fallback to plain dark green
// Note 'make' params used differ on orientation
// Portrait params use helper to fix iOS vh bug
let getStyle = (state: Global.state) => {
  state.localDevice.isLandscape
    ? ReactDOM.Style.make(
        ~position="fixed",
        ~top="0",
        ~left="0",
        ~width=Ute.getPercentageInnerHeightAsPxString(100.0, state.localDevice.innerHeight),
        ~height=Ute.getPercentageInnerHeightAsPxString(100.0, state.localDevice.innerHeight),
        ~backgroundColor="#F0FFF0",
        //~backgroundColor="#003500",
        //~backgroundImage="url(./assets/green_baize.jpg)",
        ~backgroundSize="cover",
        (),
      )
    : ReactDOM.Style.make(
        ~position="fixed",
        ~bottom="0",
        ~left="0",
        ~width="100vw",
        ~height="100vw",
        ~backgroundColor="#F0FFF0",
        //~backgroundColor="#003500",
        //~backgroundImage="url(./assets/green_baize.jpg)",
        ~backgroundSize="cover",
        (),
      )
}

@react.component
let make = (~state) => {
  let style = getStyle(state)
  <div id="regioncardtable" style> {React.null} </div>
}
