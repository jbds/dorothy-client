// Generated by ReScript, PLEASE EDIT WITH CARE
'use strict';

var React = require("react");
var RegionCardTable = require("./RegionsStyling/RegionCardTable.bs.js");
var RegionScoreSheet = require("./RegionsStyling/RegionScoreSheet.bs.js");
var RegionTableSeating = require("./RegionsStyling/RegionTableSeating.bs.js");
var RegionCardTableBRHS = require("./RegionsStyling/RegionCardTableBRHS.bs.js");
var RegionCardTableTLHS = require("./RegionsStyling/RegionCardTableTLHS.bs.js");
var RegionBiddingHistory = require("./RegionsStyling/RegionBiddingHistory.bs.js");
var RegionBiddingKeyboard = require("./RegionsStyling/RegionBiddingKeyboard.bs.js");

function App(Props) {
  var isLandscape = Props.isLandscape;
  var vhTrue = Props.vhTrue;
  return React.createElement(React.Fragment, undefined, React.createElement(RegionTableSeating.make, {
                  isLandscape: isLandscape,
                  vhTrue: vhTrue
                }), React.createElement(RegionScoreSheet.make, {
                  isLandscape: isLandscape,
                  vhTrue: vhTrue
                }), React.createElement(RegionBiddingHistory.make, {
                  isLandscape: isLandscape,
                  vhTrue: vhTrue
                }), React.createElement(RegionBiddingKeyboard.make, {
                  isLandscape: isLandscape,
                  vhTrue: vhTrue
                }), React.createElement(RegionCardTable.make, {
                  isLandscape: isLandscape,
                  vhTrue: vhTrue
                }), React.createElement(RegionCardTableTLHS.make, {
                  isLandscape: isLandscape,
                  vhTrue: vhTrue
                }), React.createElement(RegionCardTableBRHS.make, {
                  isLandscape: isLandscape,
                  vhTrue: vhTrue
                }));
}

var make = App;

exports.make = make;
/* react Not a pure module */
