void startPage(){
  rect(rulesX,rulesY,rulesWidth,rulesHeight);
  rect(leftPaddleSpeedX,leftPaddleSpeed1Y,paddleSpeedWidth,paddleSpeedHeight);
  rect(rightPaddleSpeedX,rightPaddleSpeedY,paddleSpeedWidth,paddleSpeedHeight);
  rect(beginX,beginY,beginWidth,beginHeight);
  
  fill(black);
  text(winRules,rulesX,rulesY,rulesWidth,rulesHeight);
  text(leftPaddleRules,leftPaddleSpeedX,leftPaddleSpeed1Y,paddleSpeedWidth,paddleSpeedHeight);
  text(rightPaddleRules,rightPaddleSpeedX,rightPaddleSpeedY,paddleSpeedWidth,paddleSpeedHeight);
  fill(beginColor);
  text(beginRules,beginX,beginY,beginWidth,beginHeight);
  fill(white);
  
  
  if(mouseX >= beginX && mouseX <= beginX+beginWidth &&  mouseY >= beginY && mouseY <= beginY+beginHeight){
    beginColor = #DDA0DD;
  }else beginColor = 0;
};
