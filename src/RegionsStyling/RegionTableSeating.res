// one style for Landcape and one for Portrait
// t,b,l,r are offsets from nearest side of containing block

// must declare type of state
@react.component
let make = (~dispatch: Global.action => unit, ~state: Global.state) => {
  let style = ReactDOM.Style.make(
    ~position="fixed",
    ~top=state.localDevice.isLandscape ? "0" : "0",
    ~right=state.localDevice.isLandscape ? "0" : "0",
    ~bottom=state.localDevice.isLandscape ? "60%" : "100vw",
    ~left=state.localDevice.isLandscape
      ? Ute.getPercentageInnerHeightAsPxString(100.0, state.localDevice.innerHeight)
      : "55%",
    ~background="#f8f8f8",
    ~color="gray",
    ~textAlign="center",
    ~overflowY="auto",
    (),
  )

  <div style> <ContentTableSeating dispatch state /> </div>
}
