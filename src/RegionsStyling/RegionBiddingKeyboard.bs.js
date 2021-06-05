// Generated by ReScript, PLEASE EDIT WITH CARE
'use strict';

var Ute = require("../Modules/Ute.bs.js");
var React = require("react");

function getStyle(state) {
  if (state.localDevice.isLandscape) {
    return {
            backgroundColor: "#fff0d0",
            height: Ute.getPercentageInnerHeightAsPxString(17.0, state.localDevice.innerHeight),
            left: Ute.getPercentageInnerHeightAsPxString(19.0, state.localDevice.innerHeight),
            padding: "0vh 0vh 0vh 0vh",
            position: "fixed",
            top: Ute.getPercentageInnerHeightAsPxString(58.0, state.localDevice.innerHeight),
            width: Ute.getPercentageInnerHeightAsPxString(58.0, state.localDevice.innerHeight),
            zIndex: "1",
            borderRadius: "10px"
          };
  } else {
    return {
            backgroundColor: "#fff0d0",
            bottom: "25vw",
            height: "17vw",
            left: "19vw",
            padding: "0vh 0vh 0vh 0vh",
            position: "fixed",
            width: "58vw",
            zIndex: "1",
            borderRadius: "10px"
          };
  }
}

function RegionBiddingKeyboard(Props) {
  var state = Props.state;
  var style = getStyle(state);
  return React.createElement("div", {
              style: style
            }, "Hello Bidding Keyboard");
}

var make = RegionBiddingKeyboard;

exports.getStyle = getStyle;
exports.make = make;
/* react Not a pure module */
