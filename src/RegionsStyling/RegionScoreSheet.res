@react.component
let make = (~state: Global.state) => {
  let style = ReactDOM.Style.make(
    ~position="fixed",
    ~top=state.localDevice.isLandscape ? "50%" : "0",
    ~bottom=state.localDevice.isLandscape ? "0" : "100vw",
    ~left=state.localDevice.isLandscape
      ? Ute.getPercentageInnerHeightAsPxString(100.0, state.localDevice.innerHeight)
      : "0",
    ~right=state.localDevice.isLandscape ? "0" : "46%",
    ~background="#e0e0e0",
    ~color="gray",
    ~textAlign="center",
    ~overflowY="auto",
    (),
  )
  <div id="regionscoresheet" style> <ContentScoreSheet state /> </div>
}
