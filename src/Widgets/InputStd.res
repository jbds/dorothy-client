@react.component
let make = (~id: string) => {
  //let portraitHeightFactor =
  <>
    <input
      id
      //onClick=((_e) => Js.log("Clicked input element"))
      //onChange=((_e) => Js.log("Changed input element"))
      style={ReactDOM.Style.make(
        ~color="#404040",
        ~fontSize="1.9vh",
        ~height="4.0vh",
        ~fontFamily="Trebuchet MS",
        ~margin="0vh",
        // bug - borderColor single attribute not recognised
        ~border="1px solid #26653B",
        ~borderRadius="5px",
        ~backgroundColor="#FFFFFF",
        ~width="8vh",
        ~textAlign="center",
        (),
      )}
    />
  </>
}
