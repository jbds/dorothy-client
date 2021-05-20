// this region provides card table background of green baize,
// with fallback to plain dark green
// Note 'make' params used differ on orientation
// Portrait params use helper to fix iOS vh bug

let getStyle = (isLandscape, vhTrue) => {
  isLandscape
    ? ReactDOM.Style.make(
        ~position="fixed",
        ~top="0",
        ~left="0",
        ~width=Ute.getPercentVhTrueAsString(100.0, vhTrue),
        ~height=Ute.getPercentVhTrueAsString(100.0, vhTrue),
        ~backgroundColor="#003500",
        ~backgroundImage="url(../assets/green_baize.jpg)",
        ~backgroundSize="cover",
        (),
      )
    : ReactDOM.Style.make(
        ~position="fixed",
        ~bottom="0",
        ~left="0",
        ~width="100vw",
        ~height="100vw",
        ~backgroundColor="#003500",
        ~backgroundImage="url(../assets/green_baize.jpg)",
        ~backgroundSize="cover",
        (),
      )
}

@react.component
let make = (~isLandscape, ~vhTrue) => {
  let style = getStyle(isLandscape, vhTrue)
  <div style> {React.null} </div>
}
