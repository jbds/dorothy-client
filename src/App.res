// need reference to window so we can get remote participant ids
@val external w: 'a = "window"
// we deliberately choose not to style the root element, so can use a fragment here
// all sub components will include their local styles
// note that the only styling outside of the root element is in index.html
@react.component
let make = () => {
  let (state, dispatch) = React.useReducer(Global.reducer, Global.initialState)
  // any change of state will cause this top component and all children to be
  // re-rendered if needed to match the new state.
  // At this point we need to pass the new game state to any connected remote participants
  // so assign state.game to a new child object of the window object, so we can see in
  // browser console window and consume from js
  w["gameState"] = state.game
  // write explicitly to console on every state change (local device too), not just game
  Js.log2("new game state: ", state.game)
  // send game state from the local twilio datatrack if it exists
  <>
    //{React.string("state.innerHeight:" ++ Belt.Int.toString(state.innerHeight))}
    //{React.string("state.isLandscape:" ++ Js.String2.make(state.isLandscape))}
    // RegionCardTable is not required, because this is drawn by p5
    //<RegionCardTable state />
    //<RegionCardTableTLHS state />
    //<RegionCardTableBRHS state />
    <RegionVideo state />
    <RegionTableSeating dispatch state />
    //<RegionScoreSheet state />
    // <RegionBiddingHistory isLandscape vhTrue />
    // <RegionBiddingKeyboard isLandscape vhTrue />
  </>
}
