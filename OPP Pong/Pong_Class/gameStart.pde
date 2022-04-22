void gameStart() {

  if (leftWin == false && rightWin == false) {
    paddle.draw();
    for ( int i = 0; i < counter; i++) {
      Ball[i].draw();
    }
    for (int i = 0; i < Star.length; i++) {
      Star[i].starDraw();
    };
    for(int i = 0; i< trailNum; i++){
    trail[i].draw();
    };
    leftGoal.draw();
    midLine.draw();
    rightGoal.draw();
    left.draw();
    right.draw();
  } else {
    if (leftWin == true && rightWin == false) {
      lWin.draw();
    } else if (rightWin == true && leftWin == false) {
      rWin.draw();
    };
  };
};
