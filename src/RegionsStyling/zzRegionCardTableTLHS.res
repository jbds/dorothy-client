// padding must be (default) zero to align box edges region card table edge
let getStyle = (state: Global.state) => {
  state.localDevice.isLandscape
    ? ReactDOM.Style.make(
        ~position="fixed",
        ~top=Ute.getPercentageInnerHeightAsPxString(0.0, state.localDevice.innerHeight),
        ~left=Ute.getPercentageInnerHeightAsPxString(0.0, state.localDevice.innerHeight),
        ~width=Ute.getPercentageInnerHeightAsPxString(5.0, state.localDevice.innerHeight),
        ~height=Ute.getPercentageInnerHeightAsPxString(5.0, state.localDevice.innerHeight),
        ~zIndex="1",
        ~backgroundColor="#fff0d0",
        ~borderRadius=Ute.getPercentageInnerHeightAsPxString(2.5, state.localDevice.innerHeight),
        (),
      )
    : ReactDOM.Style.make(
        ~position="fixed",
        ~bottom="95vw",
        ~left="0vw",
        ~width="5vw",
        ~height="5vw",
        ~zIndex="1",
        ~backgroundColor="#fff0d0",
        ~borderRadius="2.5vw",
        (),
      )
}

@react.component
let make = (~state) => {
  let style = getStyle(state)
  <div style> {React.null} </div>
}
