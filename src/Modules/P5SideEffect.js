'use strict';
// p is p5 library, g is drawing global properties
let drawLabels = (p, g, w) => {
  // avoid error 
  // if (!w.gameState.pointOfCompassAndPlayers) {
  //   //console.log('No labels defined, abort drawLabels');
  //   return;
  // }
  // use canvas dimension
  let textHeightToCanvasHeightRatio = g.canvasSize / 30;
  //let cardSegmentHeight = w.innerHeight * w.cardHeightToCanvasHeightRatio * w.cardSegmentHeightToCardRatio;
  p.textSize(textHeightToCanvasHeightRatio);
  p.textFont('Trebuchet MS');
  p.textAlign(p.CENTER, p.CENTER);
  // white, 50% transparent
  p.fill(255, 128);
  // move the origin to table centre
  // NB use canvas dimension here, not window dimension
  p.translate(g.canvasSize / 2, g.canvasSize / 2);
  // p.text(
  //   string,
  //   x coord of upper left corner,
  //   y coord of upper left corner,
  //   width of text area,
  //   height of text area
  // );
  p.text(
    "Dealer East JON",
    -g.canvasWidth / 4,
    -textHeightToCanvasHeightRatio,
    g.canvasWidth / 2,
    textHeightToCanvasHeightRatio * 2
  );

};

exports.drawLabels = drawLabels;
