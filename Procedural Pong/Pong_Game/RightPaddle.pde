boolean rightPaddleUp = false, rightPaddleDown = false, rightPaddleAI = false;
void rightPaddleKeyPressed() {
   if(key == CODED){
     if (keyCode == UP) {
    rightPaddleUp = true;
    rightPaddleDown = false;
    rightPaddleAI = false;
    
  }
    if (keyCode == DOWN) {
    rightPaddleUp = false;
    rightPaddleDown = true;
    rightPaddleAI = false;
  };
    if(keyCode == LEFT){
  rightPaddleUp = false;
  rightPaddleDown = false;
  rightPaddleAI = false;
  };
   }
   if(key == '2'){
  rightPaddleAI = true;
  } 


  if(rightPaddleSpeed == 0){

  if(key == 'g' || key == 'G'){
  rightPaddleSpeed = -2;
  rightPaddle = true;

  };
  if(key == 'r' || key == 'R'){
  rightPaddleSpeed = -6;
  rightPaddle = true;

  };
  if(key == 'n' || key == 'N'){
  rightPaddleSpeed = -10;
  rightPaddle = true;
  }
  ;
  }
};

void rightPaddleCreate() {
  rect(rightPaddleX, rightPaddleY, rightPaddleWidth, rightPaddleHeight);
};
