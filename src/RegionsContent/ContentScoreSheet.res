@react.component
let make = (~isLandscape) => {
  //
  <>
    <div> {React.string("Hello Scoresheet")} </div>
    <table
    // note vh below is not vhTrue, but small inaccuracy is benign here
      style={ReactDOM.Style.make(
        ~fontSize=isLandscape ? "1.9vh" : "1.9vw",
        ~fontFamily={"Trebuchet MS"},
        ~color={"#26653B"},
        ~margin={"auto"},
        //~width={"calc(var(--vh, 1vh) * 45)"},
        ~textAlign={"center"},
        (),
      )}>
      <thead />
      <tbody>
        <tr style={ReactDOM.Style.make(~backgroundColor={"#f8f8f8"}, ~color={"#000000"}, ())}>
          <td style={ReactDOM.Style.make(~padding={"1vh 1vh 1vh 1vh"}, ())}>
            {React.string("Vuln")}
          </td>
          <td style={ReactDOM.Style.make(~padding={"1vh 0.5vh 1vh 0.5vh"}, ())}>
            {React.string("Decl")}
          </td>
          <td style={ReactDOM.Style.make(~padding={"1vh 1.5vh 1vh 1.5vh"}, ())}>
            {React.string("Bid")}
          </td>
          <td style={ReactDOM.Style.make(~padding={"1vh 0vh 1vh 0vh"}, ~width={"6.5vh"}, ())}>
            {React.string("NS Tricks")}
          </td>
          <td style={ReactDOM.Style.make(~padding={"1vh 0vh 1vh 0vh"}, ~width={"6.5vh"}, ())}>
            {React.string("NS Score")}
          </td>
          <td style={ReactDOM.Style.make(~padding={"1vh 0vh 1vh 0vh"}, ~width={"6.5vh"}, ())}>
            {React.string("EW Tricks")}
          </td>
          <td style={ReactDOM.Style.make(~padding={"1vh 0vh 1vh 0vh"}, ~width={"6.5vh"}, ())}>
            {React.string("EW Score")}
          </td>
        </tr>
      </tbody>
    </table>
  </>
}
