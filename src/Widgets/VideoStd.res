@val external w: 'a = "window"

@react.component
let make = (~state: Global.state) => {
  let style = ReactDOM.Style.make(
    ~borderRadius="20%",
    ~height=state.localDevice.isLandscape
      ? Ute.getPercentageInnerHeightAsPxString(10.0, state.localDevice.innerHeight)
      : Ute.getPercentageInnerHeightAsPxString(10.0, (w["innerWidth"]: int)), //"10vh",
    ~width=state.localDevice.isLandscape
      ? Ute.getPercentageInnerHeightAsPxString(10.0, state.localDevice.innerHeight)
      : Ute.getPercentageInnerHeightAsPxString(10.0, (w["innerWidth"]: int)), //"10vh",
    ~objectFit="cover",
    ~overflow="hidden",
    //~backgroundColor="red",
    (),
  )
  <video style />
}
