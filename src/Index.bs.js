// Generated by ReScript, PLEASE EDIT WITH CARE
'use strict';

var App = require("./App.bs.js");
var React = require("react");
var ReactDom = require("react-dom");
var P5startJs = require("./p5start.js");
var VideoaudiodataJs = require("./videoaudiodata.js");

function main(prim) {
  return VideoaudiodataJs.main();
}

function p5CreateInstance(prim) {
  P5startJs.p5CreateInstance();
  
}

document.title = "Dorothy v0.24";

var root = document.querySelector("#root");

if (root == null) {
  console.log("Cannot find element with id='root'");
} else {
  ReactDom.render(React.createElement(App.make, {}), root);
}

function delayedaction(param) {
  console.log("after delay 2000ms");
  VideoaudiodataJs.main();
  
}

var dummyId = setTimeout(delayedaction, 2000);

P5startJs.p5CreateInstance();

exports.main = main;
exports.p5CreateInstance = p5CreateInstance;
exports.delayedaction = delayedaction;
exports.dummyId = dummyId;
/*  Not a pure module */
