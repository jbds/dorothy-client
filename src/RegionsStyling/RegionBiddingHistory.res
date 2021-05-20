// use padding (default) zero
let getStyle = (isLandscape, vhTrue) => {
  isLandscape
    ? ReactDOM.Style.make(
        ~position="fixed",
        ~top=Ute.getPercentVhTrueAsString(22.0, vhTrue), //"22vh",
        ~left=Ute.getPercentVhTrueAsString(25.0, vhTrue), //"25vh",
        ~width=Ute.getPercentVhTrueAsString(48.0, vhTrue), //"48vh",
        ~height=Ute.getPercentVhTrueAsString(34.0, vhTrue), //"34vh",
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
let make = (~isLandscape, ~vhTrue) => {
  let style = getStyle(isLandscape, vhTrue)
  <div style> {React.string("Hello Bidding History")} </div>
}
