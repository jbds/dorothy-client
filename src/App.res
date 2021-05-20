// must use labelled arguments in 'make' function

@react.component
let make = (~isLandscape: bool, ~vhTrue: float) => {
  // we deliberately choose not to style the root element, so can use a fragment here
  // all sub components will include their local styles
  // note that the only styling outside of the root element is in index.html
  // <>
  //   <RegionTableSeating isLandscape vhTrue />
  //   <RegionScoreSheet isLandscape vhTrue />
  //   <RegionBiddingHistory isLandscape vhTrue />
  //   <RegionBiddingKeyboard isLandscape vhTrue />
  //   <RegionCardTable isLandscape vhTrue />
  //   <RegionCardTableTLHS isLandscape vhTrue />
  //   <RegionCardTableBRHS isLandscape vhTrue />
  // </>
  <>
    <RegionTableSeating isLandscape vhTrue />
    <RegionScoreSheet isLandscape vhTrue />
    <RegionBiddingHistory isLandscape vhTrue />
    <RegionBiddingKeyboard isLandscape vhTrue />
    <RegionCardTable isLandscape vhTrue />
    <RegionCardTableTLHS isLandscape vhTrue />
    <RegionCardTableBRHS isLandscape vhTrue />
  </>
}
