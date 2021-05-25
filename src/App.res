// need reference to window so we can get remote participant ids
@val external w: 'a = "window"
// we deliberately choose not to style the root element, so can use a fragment here
// all sub components will include their local styles
// note that the only styling outside of the root element is in index.html
@react.component
let make = () => {
  let (state, dispatch) = React.useReducer(Global.reducer, Global.initialState)
  <>
    //{React.string("state.innerHeight:" ++ Belt.Int.toString(state.innerHeight))}
    //{React.string("state.isLandscape:" ++ Js.String2.make(state.isLandscape))}
    // this hidden element is a hook called by invoking .click()
    <button
      id="resizecomponents"
      onClick={_ =>
        dispatch(ResizeComponents(Global.innerHeightRef.contents, Global.isLandscapeRef.contents))}
      style={ReactDOMStyle.make(~display="none", ())}>
      {React.string("Res")}
    </button>
    <button
      id="addremoteparticipantsid"
      onClick={_ => dispatch(AddRemoteParticipantSid(w["remoteparticipantid"]))}
      style={ReactDOMStyle.make(~display="show", ())}>
      {React.string("Add")}
    </button>
    <button
      id="removeremoteparticipantsid"
      onClick={_ => dispatch(RemoveRemoteParticipantSid(w["remoteparticipantid"]))}
      style={ReactDOMStyle.make(~display="show", ())}>
      {React.string("Rem")}
    </button>
    //<RegionCardTable state />
    //<RegionCardTableTLHS state />
    //<RegionCardTableBRHS state />
    <RegionVideo state />
    // <RegionTableSeating isLandscape vhTrue />
    // <RegionScoreSheet isLandscape vhTrue />
    // <RegionBiddingHistory isLandscape vhTrue />
    // <RegionBiddingKeyboard isLandscape vhTrue />
  </>
}
