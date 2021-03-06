// Generated by ReScript, PLEASE EDIT WITH CARE
'use strict';

var React = require("react");
var VideoStd = require("../Widgets/VideoStd.bs.js");
var Belt_Array = require("rescript/lib/js/belt_Array.js");

function ContentVideo(Props) {
  var state = Props.state;
  var style = {
    margin: "0",
    padding: "0"
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
