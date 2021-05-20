@react.component
let make = (~isLandscape, ~vhTrue) => {
  let style = ReactDOM.Style.make(
    ~position="fixed",
    ~top=isLandscape ? "40%" : "0",
    ~bottom=isLandscape ? "0" : "100vw",
    ~left=isLandscape ? Ute.getPercentVhTrueAsString(100.0, vhTrue) : "0",
    ~right=isLandscape ? "0" : "46%",
    ~background="#e0e0e0",
    ~color="gray",
    ~textAlign="center",
    ~overflowY="auto",
    (),
  )
  <div style> <ContentScoreSheet isLandscape /> </div>
}
