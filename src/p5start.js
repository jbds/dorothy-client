'use strict';
var p5 = require('p5');


const p5CreateInstance = () => {
  console.log('create p5 instance');
}

// make p5CreateInstance visible outside of module
exports.p5CreateInstance = p5CreateInstance;
