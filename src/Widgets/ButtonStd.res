@react.component
let make = (
  ~isLandscape: bool,
  // // ~dispatch: Global.action => unit,
  // // ~action: Global.action,
  ~label: string,
  ~id: string,
  // ~isActive: bool=true,
  // ~isVisible: bool=true,
  // ~isWasteOfSpace: bool=false,
  ~color: string="#26653B",
) => {
  <>
    <button
      id
      // onClick={_e => dispatch(action)} //Js.log("Clicked shuffle"))
      // note vh below is not vhTrue, but small inaccuracy is benign here
      // portrait use on iPad aspect ratio empirically suggeste reduction in font size ~10%
      style={ReactDOM.Style.make(
        ~color,
        ~fontSize=isLandscape ? "1.9vh" : "1.7vw",
        ~fontFamily="Trebuchet MS",
        ~height=isLandscape ? "5.0vh" : "4.5vw",
        ~margin="0vh 0.5vh 0vh 0vh",
        // bug/quirk - borderColor single attribute not recognised
        ~border="1px solid #26653B",
        ~borderRadius="5px",
        // inactive background color was 60806040 but too greeney
        // try e0e0e0
        //~backgroundColor={isActive ? "#ffffff" : "#e0e0e0"},
        //~display={isVisible ? "inline" : "none"},
        //~visibility={isWasteOfSpace ? "hidden" : "visible"},
        (),
      )}>
      {React.string(label)}
    </button>
  </>
}
