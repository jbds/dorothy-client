// we deliberately choose not to style the root element, so can use a fragment here
// all sub components will include their local styles
// note that the only styling outside of the root element is in index.html
@react.component
let make = () => {
  let (state, dispatch) = React.useReducer(Global.reducer, Global.initialState)
  // any change of state will cause this top component and all children to be
  // re-rendered if needed to match the new state.
  // At this point we need to pass the new game state to any connected remote participants
  // send game state from the local twilio datatrack if it exists
  // %raw must be an expression
  // note that state.game will be in scope for this expression to consume,
  // no need to create a window reference
  let _dummy = %raw(`
      window.localDataTrack == undefined 
      ?
      console.log('skip on lDT undefined')
      :
      window.localDataTrack.send(JSON.stringify(state.game))
    `)
  // write explicitly to console on every state change (local device too), not just game
  Js.log2("new state: ", state)
  <>
    // RegionCardTable is not required, because this is drawn by p5
    <RegionVideo state />
    <RegionTableSeating dispatch state />
    //<RegionScoreSheet state />
    // <RegionBiddingHistory isLandscape vhTrue />
    // <RegionBiddingKeyboard isLandscape vhTrue />
  </>
}
