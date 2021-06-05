// Note 'make' params used differ on orientation

// use padding (default) zero
let getStyle = (state: Global.state) => {
  state.localDevice.isLandscape
    ? ReactDOM.Style.make(
        ~position="fixed",
        ~top=Ute.getPercentageInnerHeightAsPxString(58.0, state.localDevice.innerHeight), //"58vh",
        ~left=Ute.getPercentageInnerHeightAsPxString(19.0, state.localDevice.innerHeight), //"19vh",
        ~width=Ute.getPercentageInnerHeightAsPxString(58.0, state.localDevice.innerHeight), //"58vh",
        ~height=Ute.getPercentageInnerHeightAsPxString(17.0, state.localDevice.innerHeight), //"17vh",
        ~zIndex="1",
        ~backgroundColor="#fff0d0",
        ~borderRadius="10px",
        ~padding="0vh 0vh 0vh 0vh",
        (),
      )
    : ReactDOM.Style.make(
        ~position="fixed",
        ~bottom="25vw",
        ~left="19vw",
        ~width="58vw",
        ~height="17vw",
        ~zIndex="1",
        ~backgroundColor="#fff0d0",
        ~borderRadius="10px",
        ~padding="0vh 0vh 0vh 0vh",
        (),
      )
}

@react.component
let make = (~state) => {
  let style = getStyle(state)
  <div style> {React.string("Hello Bidding Keyboard")} </div>
}
