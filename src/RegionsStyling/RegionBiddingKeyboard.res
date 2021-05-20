// Note 'make' params used differ on orientation

// use padding (default) zero
let getStyle = (isLandscape, vhTrue) => {
  isLandscape
    ? ReactDOM.Style.make(
        ~position="fixed",
        ~top=Ute.getPercentVhTrueAsString(58.0, vhTrue), //"58vh",
        ~left=Ute.getPercentVhTrueAsString(19.0, vhTrue), //"19vh",
        ~width=Ute.getPercentVhTrueAsString(58.0, vhTrue), //"58vh",
        ~height=Ute.getPercentVhTrueAsString(17.0, vhTrue), //"17vh",
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
let make = (~isLandscape, ~vhTrue) => {
  let style = getStyle(isLandscape, vhTrue)
  <div style> {React.string("Hello Bidding Keyboard")} </div>
}
