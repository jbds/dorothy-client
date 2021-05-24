// fix iOS Safari and Chrome bug, which reports vh units incorrectly
// by calculating n% of innerheight as px string value
let getPercentageInnerHeightAsPxString = (percentAsFloat: float, innerHeight: int) => {
  Js.Float.toFixedWithPrecision(
    percentAsFloat *. Belt.Int.toFloat(innerHeight) /. 100.0,
    ~digits=0,
  ) ++ "px"
}
