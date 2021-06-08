// Generated by ReScript, PLEASE EDIT WITH CARE
'use strict';

var Ute = require("../Modules/Ute.bs.js");
var React = require("react");

function getStyle(state) {
  if (state.localDevice.isLandscape) {
    return {
            backgroundColor: "#fff0d0",
            height: Ute.getPercentageInnerHeightAsPxString(5.0, state.localDevice.innerHeight),
            left: Ute.getPercentageInnerHeightAsPxString(0.0, state.localDevice.innerHeight),
            position: "fixed",
            top: Ute.getPercentageInnerHeightAsPxString(0.0, state.localDevice.innerHeight),
            width: Ute.getPercentageInnerHeightAsPxString(5.0, state.localDevice.innerHeight),
            zIndex: "1",
            borderRadius: Ute.getPercentageInnerHeightAsPxString(2.5, state.localDevice.innerHeight)
          };
  } else {
    return {
            backgroundColor: "#fff0d0",
            bottom: "95vw",
            height: "5vw",
            left: "0vw",
            position: "fixed",
            width: "5vw",
            zIndex: "1",
            borderRadius: "2.5vw"
          };
  }
}

function ZzRegionCardTableTLHS(Props) {
  var state = Props.state;
  var style = getStyle(state);
  return React.createElement("div", {
              style: style
            }, null);
}

var make = ZzRegionCardTableTLHS;

exports.getStyle = getStyle;
exports.make = make;
/* react Not a pure module */