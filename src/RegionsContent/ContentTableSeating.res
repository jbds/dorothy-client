@react.component
let make = (~state: Global.state) => {
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
  </>
}
