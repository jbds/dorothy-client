// need reference to window so we can pass refs to js dom elements
@val external w: 'a = "window"

@react.component
let make = (~dispatch: Global.action => unit, ~state: Global.state) => {
  <>
    <InputStd id="identity" />
    <InputStd id="name" />
    <ButtonStd label="Join" state id="connect" />
    <ButtonStd label="Leave" state id="disconnect" />
    <div> {React.string("Hello Table Seating")} </div>
    <table
      style={ReactDOM.Style.make(
        ~margin={"auto"},
        ~border={"0px solid black"},
        ~borderCollapse={"collapse"},
        (),
      )}>
      <thead />
      <tbody>
        <tr style={ReactDOM.Style.make(~backgroundColor={"#f8f8f8"}, ~color={"#000000"}, ())}>
          <td
            style={ReactDOM.Style.make(
              ~padding={"0vh 0vh 0vh 0vh"},
              ~margin={"0vh"},
              ~border={"0px solid red"},
              ~borderCollapse={"collapse"},
              (),
            )}>
            <ButtonStd label="N" state id="x" />
          </td>
          <td
            style={ReactDOM.Style.make(
              ~padding={"0vh 0vh 0vh 0vh"},
              ~margin={"0vh"},
              ~border={"0px solid red"},
              ~borderCollapse={"collapse"},
              (),
            )}>
            <ButtonStd label="E" state id="x" />
          </td>
          <td
            style={ReactDOM.Style.make(
              ~padding={"0vh 0vh 0vh 0vh"},
              ~margin={"0vh"},
              ~border={"0px solid red"},
              ~borderCollapse={"collapse"},
              (),
            )}>
            <ButtonStd label="S" state id="x" />
          </td>
          <td
            style={ReactDOM.Style.make(
              ~padding={"0vh 0vh 0vh 0vh"},
              ~margin={"0vh"},
              ~border={"0px solid red"},
              ~borderCollapse={"collapse"},
              (),
            )}>
            <ButtonStd label="W" state id="x" />
          </td>
          <td
            style={ReactDOM.Style.make(
              ~padding={"0vh 0vh 0vh 0vh"},
              ~margin={"0vh"},
              ~border={"0px solid red"},
              ~borderCollapse={"collapse"},
              (),
            )}>
            <ButtonStd label="X" state id="x" />
          </td>
          <td
            style={ReactDOM.Style.make(
              ~padding={"0vh 0vh 0vh 0vh"},
              ~margin={"0vh"},
              ~border={"0px solid red"},
              ~borderCollapse={"collapse"},
              (),
            )}>
            <ButtonStd label="Y" state id="x" />
          </td>
          <td
            style={ReactDOM.Style.make(
              ~padding={"0vh 0vh 0vh 0vh"},
              ~margin={"0vh"},
              ~border={"0px solid red"},
              ~borderCollapse={"collapse"},
              (),
            )}>
            <ButtonStd label="Z" state id="x" />
          </td>
        </tr>
        // <tr style={ReactDOM.Style.make(~backgroundColor={"#f8f8f8"}, ~color={"#000000"}, ())}>
        //   <td
        //     style={ReactDOM.Style.make(
        //       ~padding={"0vh 0vh 0vh 0vh"},
        //       ~margin={"0vh"},
        //       ~border={"0px solid red"},
        //       ~borderCollapse={"collapse"},
        //       (),
        //     )}>
        //     <ButtonStd label="N" isLandscape />
        //   </td>
        //   <td
        //     style={ReactDOM.Style.make(
        //       ~padding={"0vh 0vh 0vh 0vh"},
        //       ~margin={"0vh"},
        //       ~border={"0px solid red"},
        //       ~borderCollapse={"collapse"},
        //       (),
        //     )}>
        //     <ButtonStd label="E" isLandscape />
        //   </td>
        //   <td
        //     style={ReactDOM.Style.make(
        //       ~padding={"0vh 0vh 0vh 0vh"},
        //       ~margin={"0vh"},
        //       ~border={"0px solid red"},
        //       ~borderCollapse={"collapse"},
        //       (),
        //     )}>
        //     <ButtonStd label="S" isLandscape />
        //   </td>
        //   <td
        //     style={ReactDOM.Style.make(
        //       ~padding={"0vh 0vh 0vh 0vh"},
        //       ~margin={"0vh"},
        //       ~border={"0px solid red"},
        //       ~borderCollapse={"collapse"},
        //       (),
        //     )}>
        //     <ButtonStd label="W" isLandscape />
        //   </td>
        //   <td
        //     style={ReactDOM.Style.make(
        //       ~padding={"0vh 0vh 0vh 0vh"},
        //       ~margin={"0vh"},
        //       ~border={"0px solid red"},
        //       ~borderCollapse={"collapse"},
        //       (),
        //     )}>
        //     <ButtonStd label="X" isLandscape />
        //   </td>
        //   <td
        //     style={ReactDOM.Style.make(
        //       ~padding={"0vh 0vh 0vh 0vh"},
        //       ~margin={"0vh"},
        //       ~border={"0px solid red"},
        //       ~borderCollapse={"collapse"},
        //       (),
        //     )}>
        //     <ButtonStd label="Y" isLandscape />
        //   </td>
        //   <td
        //     style={ReactDOM.Style.make(
        //       ~padding={"0vh 0vh 0vh 0vh"},
        //       ~margin={"0vh"},
        //       ~border={"0px solid red"},
        //       ~borderCollapse={"collapse"},
        //       (),
        //     )}>
        //     <ButtonStd label="Z" isLandscape />
        //   </td>
        // </tr>
        // <tr style={ReactDOM.Style.make(~backgroundColor={"#f8f8f8"}, ~color={"#000000"}, ())}>
        //   <td
        //     style={ReactDOM.Style.make(
        //       ~padding={"0vh 0vh 0vh 0vh"},
        //       ~margin={"0vh"},
        //       ~border={"0px solid red"},
        //       ~borderCollapse={"collapse"},
        //       (),
        //     )}>
        //     <ButtonStd label="N" isLandscape />
        //   </td>
        //   <td
        //     style={ReactDOM.Style.make(
        //       ~padding={"0vh 0vh 0vh 0vh"},
        //       ~margin={"0vh"},
        //       ~border={"0px solid red"},
        //       ~borderCollapse={"collapse"},
        //       (),
        //     )}>
        //     <ButtonStd label="E" isLandscape />
        //   </td>
        //   <td
        //     style={ReactDOM.Style.make(
        //       ~padding={"0vh 0vh 0vh 0vh"},
        //       ~margin={"0vh"},
        //       ~border={"0px solid red"},
        //       ~borderCollapse={"collapse"},
        //       (),
        //     )}>
        //     <ButtonStd label="S" isLandscape />
        //   </td>
        //   <td
        //     style={ReactDOM.Style.make(
        //       ~padding={"0vh 0vh 0vh 0vh"},
        //       ~margin={"0vh"},
        //       ~border={"0px solid red"},
        //       ~borderCollapse={"collapse"},
        //       (),
        //     )}>
        //     <ButtonStd label="W" isLandscape />
        //   </td>
        //   <td
        //     style={ReactDOM.Style.make(
        //       ~padding={"0vh 0vh 0vh 0vh"},
        //       ~margin={"0vh"},
        //       ~border={"0px solid red"},
        //       ~borderCollapse={"collapse"},
        //       (),
        //     )}>
        //     <ButtonStd label="X" isLandscape />
        //   </td>
        //   <td
        //     style={ReactDOM.Style.make(
        //       ~padding={"0vh 0vh 0vh 0vh"},
        //       ~margin={"0vh"},
        //       ~border={"0px solid red"},
        //       ~borderCollapse={"collapse"},
        //       (),
        //     )}>
        //     <ButtonStd label="Y" isLandscape />
        //   </td>
        //   <td
        //     style={ReactDOM.Style.make(
        //       ~padding={"0vh 0vh 0vh 0vh"},
        //       ~margin={"0vh"},
        //       ~border={"0px solid red"},
        //       ~borderCollapse={"collapse"},
        //       (),
        //     )}>
        //     <ButtonStd label="Z" isLandscape />
        //   </td>
        // </tr>
        // <tr style={ReactDOM.Style.make(~backgroundColor={"#f8f8f8"}, ~color={"#000000"}, ())}>
        //   <td
        //     style={ReactDOM.Style.make(
        //       ~padding={"0vh 0vh 0vh 0vh"},
        //       ~margin={"0vh"},
        //       ~border={"0px solid red"},
        //       ~borderCollapse={"collapse"},
        //       (),
        //     )}>
        //     <ButtonStd label="N" isLandscape />
        //   </td>
        //   <td
        //     style={ReactDOM.Style.make(
        //       ~padding={"0vh 0vh 0vh 0vh"},
        //       ~margin={"0vh"},
        //       ~border={"0px solid red"},
        //       ~borderCollapse={"collapse"},
        //       (),
        //     )}>
        //     <ButtonStd label="E" isLandscape />
        //   </td>
        //   <td
        //     style={ReactDOM.Style.make(
        //       ~padding={"0vh 0vh 0vh 0vh"},
        //       ~margin={"0vh"},
        //       ~border={"0px solid red"},
        //       ~borderCollapse={"collapse"},
        //       (),
        //     )}>
        //     <ButtonStd label="S" isLandscape />
        //   </td>
        //   <td
        //     style={ReactDOM.Style.make(
        //       ~padding={"0vh 0vh 0vh 0vh"},
        //       ~margin={"0vh"},
        //       ~border={"0px solid red"},
        //       ~borderCollapse={"collapse"},
        //       (),
        //     )}>
        //     <ButtonStd label="W" isLandscape />
        //   </td>
        //   <td
        //     style={ReactDOM.Style.make(
        //       ~padding={"0vh 0vh 0vh 0vh"},
        //       ~margin={"0vh"},
        //       ~border={"0px solid red"},
        //       ~borderCollapse={"collapse"},
        //       (),
        //     )}>
        //     <ButtonStd label="X" isLandscape />
        //   </td>
        //   <td
        //     style={ReactDOM.Style.make(
        //       ~padding={"0vh 0vh 0vh 0vh"},
        //       ~margin={"0vh"},
        //       ~border={"0px solid red"},
        //       ~borderCollapse={"collapse"},
        //       (),
        //     )}>
        //     <ButtonStd label="Y" isLandscape />
        //   </td>
        //   <td
        //     style={ReactDOM.Style.make(
        //       ~padding={"0vh 0vh 0vh 0vh"},
        //       ~margin={"0vh"},
        //       ~border={"0px solid red"},
        //       ~borderCollapse={"collapse"},
        //       (),
        //     )}>
        //     <ButtonStd label="Z" isLandscape />
        //   </td>
        // </tr>
        // <tr style={ReactDOM.Style.make(~backgroundColor={"#f8f8f8"}, ~color={"#000000"}, ())}>
        //   <td
        //     style={ReactDOM.Style.make(
        //       ~padding={"0vh 0vh 0vh 0vh"},
        //       ~margin={"0vh"},
        //       ~border={"0px solid red"},
        //       ~borderCollapse={"collapse"},
        //       (),
        //     )}>
        //     <ButtonStd label="N" isLandscape />
        //   </td>
        //   <td
        //     style={ReactDOM.Style.make(
        //       ~padding={"0vh 0vh 0vh 0vh"},
        //       ~margin={"0vh"},
        //       ~border={"0px solid red"},
        //       ~borderCollapse={"collapse"},
        //       (),
        //     )}>
        //     <ButtonStd label="E" isLandscape />
        //   </td>
        //   <td
        //     style={ReactDOM.Style.make(
        //       ~padding={"0vh 0vh 0vh 0vh"},
        //       ~margin={"0vh"},
        //       ~border={"0px solid red"},
        //       ~borderCollapse={"collapse"},
        //       (),
        //     )}>
        //     <ButtonStd label="S" isLandscape />
        //   </td>
        //   <td
        //     style={ReactDOM.Style.make(
        //       ~padding={"0vh 0vh 0vh 0vh"},
        //       ~margin={"0vh"},
        //       ~border={"0px solid red"},
        //       ~borderCollapse={"collapse"},
        //       (),
        //     )}>
        //     <ButtonStd label="W" isLandscape />
        //   </td>
        //   <td
        //     style={ReactDOM.Style.make(
        //       ~padding={"0vh 0vh 0vh 0vh"},
        //       ~margin={"0vh"},
        //       ~border={"0px solid red"},
        //       ~borderCollapse={"collapse"},
        //       (),
        //     )}>
        //     <ButtonStd label="X" isLandscape />
        //   </td>
        //   <td
        //     style={ReactDOM.Style.make(
        //       ~padding={"0vh 0vh 0vh 0vh"},
        //       ~margin={"0vh"},
        //       ~border={"0px solid red"},
        //       ~borderCollapse={"collapse"},
        //       (),
        //     )}>
        //     <ButtonStd label="Y" isLandscape />
        //   </td>
        //   <td
        //     style={ReactDOM.Style.make(
        //       ~padding={"0vh 0vh 0vh 0vh"},
        //       ~margin={"0vh"},
        //       ~border={"0px solid red"},
        //       ~borderCollapse={"collapse"},
        //       (),
        //     )}>
        //     <ButtonStd label="Z" isLandscape />
        //   </td>
        // </tr>
        // <tr style={ReactDOM.Style.make(~backgroundColor={"#f8f8f8"}, ~color={"#000000"}, ())}>
        //   <td
        //     style={ReactDOM.Style.make(
        //       ~padding={"0vh 0vh 0vh 0vh"},
        //       ~margin={"0vh"},
        //       ~border={"0px solid red"},
        //       ~borderCollapse={"collapse"},
        //       (),
        //     )}>
        //     <ButtonStd label="N" isLandscape />
        //   </td>
        //   <td
        //     style={ReactDOM.Style.make(
        //       ~padding={"0vh 0vh 0vh 0vh"},
        //       ~margin={"0vh"},
        //       ~border={"0px solid red"},
        //       ~borderCollapse={"collapse"},
        //       (),
        //     )}>
        //     <ButtonStd label="E" isLandscape />
        //   </td>
        //   <td
        //     style={ReactDOM.Style.make(
        //       ~padding={"0vh 0vh 0vh 0vh"},
        //       ~margin={"0vh"},
        //       ~border={"0px solid red"},
        //       ~borderCollapse={"collapse"},
        //       (),
        //     )}>
        //     <ButtonStd label="S" isLandscape />
        //   </td>
        //   <td
        //     style={ReactDOM.Style.make(
        //       ~padding={"0vh 0vh 0vh 0vh"},
        //       ~margin={"0vh"},
        //       ~border={"0px solid red"},
        //       ~borderCollapse={"collapse"},
        //       (),
        //     )}>
        //     <ButtonStd label="W" isLandscape />
        //   </td>
        //   <td
        //     style={ReactDOM.Style.make(
        //       ~padding={"0vh 0vh 0vh 0vh"},
        //       ~margin={"0vh"},
        //       ~border={"0px solid red"},
        //       ~borderCollapse={"collapse"},
        //       (),
        //     )}>
        //     <ButtonStd label="X" isLandscape />
        //   </td>
        //   <td
        //     style={ReactDOM.Style.make(
        //       ~padding={"0vh 0vh 0vh 0vh"},
        //       ~margin={"0vh"},
        //       ~border={"0px solid red"},
        //       ~borderCollapse={"collapse"},
        //       (),
        //     )}>
        //     <ButtonStd label="Y" isLandscape />
        //   </td>
        //   <td
        //     style={ReactDOM.Style.make(
        //       ~padding={"0vh 0vh 0vh 0vh"},
        //       ~margin={"0vh"},
        //       ~border={"0px solid red"},
        //       ~borderCollapse={"collapse"},
        //       (),
        //     )}>
        //     <ButtonStd label="Z" isLandscape />
        //   </td>
        // </tr>
        // <tr style={ReactDOM.Style.make(~backgroundColor={"#f8f8f8"}, ~color={"#000000"}, ())}>
        //   <td
        //     style={ReactDOM.Style.make(
        //       ~padding={"0vh 0vh 0vh 0vh"},
        //       ~margin={"0vh"},
        //       ~border={"0px solid red"},
        //       ~borderCollapse={"collapse"},
        //       (),
        //     )}>
        //     <ButtonStd label="N" isLandscape />
        //   </td>
        //   <td
        //     style={ReactDOM.Style.make(
        //       ~padding={"0vh 0vh 0vh 0vh"},
        //       ~margin={"0vh"},
        //       ~border={"0px solid red"},
        //       ~borderCollapse={"collapse"},
        //       (),
        //     )}>
        //     <ButtonStd label="E" isLandscape />
        //   </td>
        //   <td
        //     style={ReactDOM.Style.make(
        //       ~padding={"0vh 0vh 0vh 0vh"},
        //       ~margin={"0vh"},
        //       ~border={"0px solid red"},
        //       ~borderCollapse={"collapse"},
        //       (),
        //     )}>
        //     <ButtonStd label="S" isLandscape />
        //   </td>
        //   <td
        //     style={ReactDOM.Style.make(
        //       ~padding={"0vh 0vh 0vh 0vh"},
        //       ~margin={"0vh"},
        //       ~border={"0px solid red"},
        //       ~borderCollapse={"collapse"},
        //       (),
        //     )}>
        //     <ButtonStd label="W" isLandscape />
        //   </td>
        //   <td
        //     style={ReactDOM.Style.make(
        //       ~padding={"0vh 0vh 0vh 0vh"},
        //       ~margin={"0vh"},
        //       ~border={"0px solid red"},
        //       ~borderCollapse={"collapse"},
        //       (),
        //     )}>
        //     <ButtonStd label="X" isLandscape />
        //   </td>
        //   <td
        //     style={ReactDOM.Style.make(
        //       ~padding={"0vh 0vh 0vh 0vh"},
        //       ~margin={"0vh"},
        //       ~border={"0px solid red"},
        //       ~borderCollapse={"collapse"},
        //       (),
        //     )}>
        //     <ButtonStd label="Y" isLandscape />
        //   </td>
        //   <td
        //     style={ReactDOM.Style.make(
        //       ~padding={"0vh 0vh 0vh 0vh"},
        //       ~margin={"0vh"},
        //       ~border={"0px solid red"},
        //       ~borderCollapse={"collapse"},
        //       (),
        //     )}>
        //     <ButtonStd label="Z" isLandscape />
        //   </td>
        // </tr>
      </tbody>
    </table>
    // addremoteparticipantsid .click() is called from videoaudiodata.js
    <button
      id="addremoteparticipantsid"
      onClick={_ => dispatch(AddRemoteParticipantSid(w["remoteparticipantid"]))}
      style={ReactDOMStyle.make(~display="show", ())}>
      {React.string("Add")}
    </button>
    // resizecomponents .click() is called from Global.res
    <button
      id="resizecomponents"
      onClick={_ =>
        dispatch(ResizeComponents(Global.innerHeightRef.contents, Global.isLandscapeRef.contents))}
      style={ReactDOMStyle.make(~display="none", ())}>
      {React.string("Res")}
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
    // replace game state with received state from remote participant
    // but only if state has changed to avoid infinite stream of messages
    <button
      id="replacegamestatefromremote"
      onClick={_ => {
        w["receivedGameState"] == state.game
          ? Js.log("recd state = local state, so action aborted")
          : dispatch(ReplaceGameStateFromRemote(w["receivedGameState"]))
      }}
      style={ReactDOMStyle.make(~display="show", ())}>
      {React.string("ReplaceGameStateFromRemote")}
    </button>
  </>
}
