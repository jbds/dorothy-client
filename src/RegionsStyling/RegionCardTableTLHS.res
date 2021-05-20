// Note 'make' params used differ on orientation

// padding must be (default) zero to align box edges region card table edge
let getStyle = (isLandscape, vhTrue) => {
  isLandscape
    ? ReactDOM.Style.make(
        ~position="fixed",
        ~top=Ute.getPercentVhTrueAsString(0.0, vhTrue), //"vh",
        ~left=Ute.getPercentVhTrueAsString(0.0, vhTrue), //"vh",
        ~width=Ute.getPercentVhTrueAsString(5.0, vhTrue), //"vh",
        ~height=Ute.getPercentVhTrueAsString(5.0, vhTrue), //"vh",
        ~zIndex="1",
        ~backgroundColor="#fff0d0",
        ~borderRadius=Ute.getPercentVhTrueAsString(2.5, vhTrue),
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
let make = (~isLandscape, ~vhTrue) => {
  let style = getStyle(isLandscape, vhTrue)
  <div style> {React.null} </div>
}
