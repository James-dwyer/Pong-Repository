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
  //if (key == 'l') {
  //    rightPaddleUp = true;
  //    rightPaddleDown = false;
  //  }
  //  if (key == 'o') {
  //    rightPaddleUp = false;
  //    rightPaddleDown = true;
  //  }
  //  if (key == 'k') {
  //  }
  //  rightPaddleDown = false;
  //  rightPaddleUp = false;
  //  ;


  //if(rightPaddleSpeed == 0){

  //if(key == 'n' || key == 'N'){
  //rightPaddleSpeed = -2;

  //};
  //if(key == 'f' || key == 'F'){
  //rightPaddleSpeed = -6;

  //};
  //if(key == 'g' || key == 'G'){
  //rightPaddleSpeed = -10;
  //}
  //;
  //}
};

void rightPaddleCreate() {
  rect(rightPaddleX, rightPaddleY, rightPaddleWidth, rightPaddleHeight);
};
