@react.component
let make = (~state: Global.state) => {
  let style = ReactDOM.Style.make(
    ~borderRadius="20%",
    ~height=Ute.getPercentageInnerHeightAsPxString(10.0, state.innerHeight), //"10vh",
    ~width=Ute.getPercentageInnerHeightAsPxString(10.0, state.innerHeight), //"10vh",
    ~objectFit="cover",
    ~overflow="hidden",
    ~backgroundColor="red",
    (),
  )
  <video style />
}
