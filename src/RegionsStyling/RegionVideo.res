@react.component
let make = (~state: Global.state) => {
  let style = ReactDOM.Style.make(
    ~position="fixed",
    ~top=state.isLandscape ? "40%" : "0",
    ~bottom=state.isLandscape ? "50%" : "100vw",
    ~left=state.isLandscape
      ? Ute.getPercentageInnerHeightAsPxString(100.0, state.innerHeight)
      : "0",
    ~right=state.isLandscape ? "0" : "46%",
    ~background="#e0e0f0",
    ~color="gray",
    ~textAlign="center",
    ~overflowY="auto",
    (),
  )
  <div style> <ContentVideo state /> </div>
}
