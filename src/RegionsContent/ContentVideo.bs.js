// Generated by ReScript, PLEASE EDIT WITH CARE
'use strict';

var Ute = require("../Modules/Ute.bs.js");
var React = require("react");
var VideoStd = require("../Widgets/VideoStd.bs.js");
var Belt_Array = require("rescript/lib/js/belt_Array.js");

function ContentVideo(Props) {
  var state = Props.state;
  var style = {
    margin: Ute.getPercentageInnerHeightAsPxString(0.5, state.localDevice.innerHeight)
  };
  var items = Belt_Array.map(state.localDevice.videoContainerIds, (function (id) {
          return React.createElement("span", {
                      key: id,
                      id: id,
                      style: style
                    }, React.createElement(VideoStd.make, {
                          state: state
                        }));
        }));
  return React.createElement(React.Fragment, undefined, React.createElement("div", {
                  id: "participants"
                }, items));
}

var make = ContentVideo;

exports.make = make;
/* react Not a pure module */
