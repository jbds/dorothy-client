// Note 'make' params used differ on orientation
// padding must be (default) zero to align box edges region card table edge
let getStyle = (state: Global.state) => {
  state.isLandscape
    ? ReactDOM.Style.make(
        ~position="fixed",
        ~bottom=Ute.getPercentageInnerHeightAsPxString(0.0, state.innerHeight),
        ~left=Ute.getPercentageInnerHeightAsPxString(95.0, state.innerHeight),
        ~width=Ute.getPercentageInnerHeightAsPxString(5.0, state.innerHeight),
        ~height=Ute.getPercentageInnerHeightAsPxString(5.0, state.innerHeight),
        ~zIndex="1",
        ~backgroundColor="#fff0d0",
        ~borderRadius=Ute.getPercentageInnerHeightAsPxString(2.5, state.innerHeight),
        (),
      )
    : ReactDOM.Style.make(
        ~position="fixed",
        ~bottom="0vw",
        ~right="0vw",
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
