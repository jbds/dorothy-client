// Generated by ReScript, PLEASE EDIT WITH CARE
'use strict';

var Ute = require("../Modules/Ute.bs.js");
var React = require("react");

function getStyle(state) {
  if (state.localDevice.isLandscape) {
    return {
            backgroundColor: "#fff0d0",
            height: Ute.getPercentageInnerHeightAsPxString(34.0, state.localDevice.innerHeight),
            left: Ute.getPercentageInnerHeightAsPxString(25.0, state.localDevice.innerHeight),
            padding: "0vh 0vh 0vh 0vh",
            position: "fixed",
            top: Ute.getPercentageInnerHeightAsPxString(22.0, state.localDevice.innerHeight),
            width: Ute.getPercentageInnerHeightAsPxString(48.0, state.localDevice.innerHeight),
            zIndex: "1",
            borderRadius: "5px"
          };
  } else {
    return {
            backgroundColor: "#fff0d0",
            bottom: "44vw",
            height: "34vw",
            left: "25vw",
            padding: "0vh 0vh 0vh 0vh",
            position: "fixed",
            width: "48vw",
            zIndex: "1",
            borderRadius: "5px"
          };
  }
}

function RegionBiddingHistory(Props) {
  var state = Props.state;
  var style = getStyle(state);
  return React.createElement("div", {
              style: style
            }, "Hello Bidding History");
}

var make = RegionBiddingHistory;

exports.getStyle = getStyle;
exports.make = make;
/* react Not a pure module */
