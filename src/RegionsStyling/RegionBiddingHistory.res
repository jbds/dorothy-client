// use padding (default) zero
let getStyle = (state: Global.state) => {
  state.localDevice.isLandscape
    ? ReactDOM.Style.make(
        ~position="fixed",
        ~top=Ute.getPercentageInnerHeightAsPxString(22.0, state.localDevice.innerHeight), //"22vh",
        ~left=Ute.getPercentageInnerHeightAsPxString(25.0, state.localDevice.innerHeight), //"25vh",
        ~width=Ute.getPercentageInnerHeightAsPxString(48.0, state.localDevice.innerHeight), //"48vh",
        ~height=Ute.getPercentageInnerHeightAsPxString(34.0, state.localDevice.innerHeight), //"34vh",
        ~zIndex="1",
        ~backgroundColor="#fff0d0",
        ~borderRadius="5px",
        ~padding="0vh 0vh 0vh 0vh",
        (),
      )
    : ReactDOM.Style.make(
        ~position="fixed",
        ~bottom="44vw",
        ~left="25vw",
        ~width="48vw",
        ~height="34vw",
        ~zIndex="1",
        ~backgroundColor="#fff0d0",
        ~borderRadius="5px",
        ~padding="0vh 0vh 0vh 0vh",
        (),
      )
}

@react.component
let make = (~state) => {
  let style = getStyle(state)
  <div style> {React.string("Hello Bidding History")} </div>
}
