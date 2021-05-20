// fix iOS Safari and Chrome bug
// dynamically calc the NNNvh height as XXXpx equivalent
let getPercentVhTrueAsString = (percentAsFloat: float, vhTrue: float) => {
  Js.Float.toFixedWithPrecision(percentAsFloat *. vhTrue, ~digits=0) ++ "px"
}
