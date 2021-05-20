@react.component
let make = (~isLandscape, ~vhTrue) => {
  let style = ReactDOM.Style.make(
    ~position="fixed",
    ~top=isLandscape ? "40%" : "0",
    ~bottom=isLandscape ? "50%" : "100vw",
    ~left=isLandscape ? Ute.getPercentVhTrueAsString(100.0, vhTrue) : "0",
    ~right=isLandscape ? "0" : "46%",
    ~background="#e0e0f0",
    ~color="gray",
    ~textAlign="center",
    ~overflowY="auto",
    (),
  )
  <div style> <ContentVideo isLandscape /> </div>
}
