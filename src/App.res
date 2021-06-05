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
  Js.log2("statechange:", state.game)
  // send game state from the local twilio datatrack if it exists
  <>
    //{React.string("state.innerHeight:" ++ Belt.Int.toString(state.innerHeight))}
    //{React.string("state.isLandscape:" ++ Js.String2.make(state.isLandscape))}
    // resizecomponents .click() is called from Global.res
    <button
      id="resizecomponents"
      onClick={_ =>
        dispatch(ResizeComponents(Global.innerHeightRef.contents, Global.isLandscapeRef.contents))}
      style={ReactDOMStyle.make(~display="none", ())}>
      {React.string("Res")}
    </button>
    // addremoteparticipantsid .click() is called from videoaudiodata.js
    <button
      id="addremoteparticipantsid"
      onClick={_ => dispatch(AddRemoteParticipantSid(w["remoteparticipantid"]))}
      style={ReactDOMStyle.make(~display="show", ())}>
      {React.string("Add")}
    </button>
    // removeremoteparticipantsid .click() is called from videoaudiodata.js
    <button
      id="removeremoteparticipantsid"
      onClick={_ => dispatch(RemoveRemoteParticipantSid(w["remoteparticipantid"]))}
      style={ReactDOMStyle.make(~display="show", ())}>
      {React.string("Rem")}
    </button>
    // test a change of the game state
    <button
      id="testchangeofgamestate"
      onClick={_ => dispatch(TestChangeOfGameState(1))}
      style={ReactDOMStyle.make(~display="show", ())}>
      {React.string("ChangeGameState")}
    </button>
    //<RegionCardTable state />
    //<RegionCardTableTLHS state />
    //<RegionCardTableBRHS state />
    <RegionVideo state />
    <RegionTableSeating state />
    // <RegionScoreSheet isLandscape vhTrue />
    // <RegionBiddingHistory isLandscape vhTrue />
    // <RegionBiddingKeyboard isLandscape vhTrue />
  </>
}
