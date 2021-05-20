// one style for Landcape and one for Portrait
// t,b,l,r are offsets from nearest side of containing block

@react.component
let make = (~isLandscape, ~vhTrue) => {
  let style = ReactDOM.Style.make(
    ~position="fixed",
    ~top="0",
    ~bottom=isLandscape ? "60%" : "100vw",
    ~left=isLandscape ? Ute.getPercentVhTrueAsString(100.0, vhTrue) : "54%",
    ~right=isLandscape ? "0" : "0",
    ~background="#f8f8f8",
    ~color="gray",
    ~textAlign="center",
    ~overflowY="auto",
    (),
  )

  <div style> <ContentTableSeating isLandscape /> </div>
}
