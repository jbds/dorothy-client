// Generated by ReScript, PLEASE EDIT WITH CARE
'use strict';

var React = require("react");
var InputStd = require("../Widgets/InputStd.bs.js");
var ButtonStd = require("../Widgets/ButtonStd.bs.js");

function ContentTableSeating(Props) {
  var state = Props.state;
  return React.createElement(React.Fragment, undefined, React.createElement(InputStd.make, {
                  id: "identity"
                }), React.createElement(InputStd.make, {
                  id: "name"
                }), React.createElement(ButtonStd.make, {
                  state: state,
                  label: "Join",
                  id: "connect"
                }), React.createElement(ButtonStd.make, {
                  state: state,
                  label: "Leave",
                  id: "disconnect"
                }), React.createElement("div", undefined, "Hello Table Seating"), React.createElement("table", {
                  style: {
                    border: "0px solid black",
                    borderCollapse: "collapse",
                    margin: "auto"
                  }
                }, React.createElement("thead", undefined), React.createElement("tbody", undefined, React.createElement("tr", {
                          style: {
                            backgroundColor: "#f8f8f8",
                            color: "#000000"
                          }
                        }, React.createElement("td", {
                              style: {
                                border: "0px solid red",
                                borderCollapse: "collapse",
                                margin: "0vh",
                                padding: "0vh 0vh 0vh 0vh"
                              }
                            }, React.createElement(ButtonStd.make, {
                                  state: state,
                                  label: "N",
                                  id: "x"
                                })), React.createElement("td", {
                              style: {
                                border: "0px solid red",
                                borderCollapse: "collapse",
                                margin: "0vh",
                                padding: "0vh 0vh 0vh 0vh"
                              }
                            }, React.createElement(ButtonStd.make, {
                                  state: state,
                                  label: "E",
                                  id: "x"
                                })), React.createElement("td", {
                              style: {
                                border: "0px solid red",
                                borderCollapse: "collapse",
                                margin: "0vh",
                                padding: "0vh 0vh 0vh 0vh"
                              }
                            }, React.createElement(ButtonStd.make, {
                                  state: state,
                                  label: "S",
                                  id: "x"
                                })), React.createElement("td", {
                              style: {
                                border: "0px solid red",
                                borderCollapse: "collapse",
                                margin: "0vh",
                                padding: "0vh 0vh 0vh 0vh"
                              }
                            }, React.createElement(ButtonStd.make, {
                                  state: state,
                                  label: "W",
                                  id: "x"
                                })), React.createElement("td", {
                              style: {
                                border: "0px solid red",
                                borderCollapse: "collapse",
                                margin: "0vh",
                                padding: "0vh 0vh 0vh 0vh"
                              }
                            }, React.createElement(ButtonStd.make, {
                                  state: state,
                                  label: "X",
                                  id: "x"
                                })), React.createElement("td", {
                              style: {
                                border: "0px solid red",
                                borderCollapse: "collapse",
                                margin: "0vh",
                                padding: "0vh 0vh 0vh 0vh"
                              }
                            }, React.createElement(ButtonStd.make, {
                                  state: state,
                                  label: "Y",
                                  id: "x"
                                })), React.createElement("td", {
                              style: {
                                border: "0px solid red",
                                borderCollapse: "collapse",
                                margin: "0vh",
                                padding: "0vh 0vh 0vh 0vh"
                              }
                            }, React.createElement(ButtonStd.make, {
                                  state: state,
                                  label: "Z",
                                  id: "x"
                                }))))));
}

var make = ContentTableSeating;

exports.make = make;
/* react Not a pure module */
