@react.component
let make = (~state: Global.state) => {
  let style = ReactDOM.Style.make(
    ~position="fixed",
    ~top=state.localDevice.isLandscape ? "40%" : "0",
    ~right=state.localDevice.isLandscape ? "0" : "45%",
    ~bottom=state.localDevice.isLandscape ? "50%" : "100vw",
    ~left=state.localDevice.isLandscape
      ? Ute.getPercentageInnerHeightAsPxString(100.0, state.localDevice.innerHeight)
      : "45%",
    ~background="#e0e0f0",
    ~color="gray",
    ~textAlign="center",
    ~overflowY="auto",
    (),
  )
  <div style> <ContentVideo state /> </div>
}
