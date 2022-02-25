boolean leftPaddleUp = false, leftPaddleDown = false;
boolean leftPaddleAI = false;
void leftPaddleKeyPressed() {
    
  if (key == 'w'|| key == 'W') {
    leftPaddleUp = true;
    leftPaddleDown = false;
    leftPaddleAI = false;
  }
  if (key == 's' || key == 's') {
    leftPaddleUp = false;
    leftPaddleDown = true;
    leftPaddleAI = false;
  };
  if(key == 'a' || key == 'A'){
  leftPaddleUp = false;
  leftPaddleDown = false;
  leftPaddleAI = false;
  };
  if(key == '1'){
  leftPaddleAI = true;
  } 
  if(key == '3'){
  leftPaddleAI = true;
  rightPaddleAI = true;
  };
  if (leftPaddleSpeed == 0) {
    if (key == 'n' || key == 'N') {
      leftPaddleSpeed = -2;
    };
    if (key == 'f' || key == 'F') {
      leftPaddleSpeed = -6;
    };
    if (key == 'g' || key == 'G') {
      leftPaddleSpeed = -10;
    }
    ;
  };
}

void leftPaddleCreate(){
rect(leftPaddleX, leftPaddleY, leftPaddleWidth, leftPaddleHeight);

};
