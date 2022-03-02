void startPage(){
  rect(rulesX,rulesY,rulesWidth,rulesHeight);
  rect(leftPaddleSpeedX,leftPaddleSpeedY,paddleSpeedWidth,paddleSpeedHeight);
  rect(leftPaddleSpeedX,leftPaddleSpeed1Y,paddleSpeedWidth,paddleSpeedHeight);
  rect(leftPaddleSpeedX,leftPaddleSpeed2Y,paddleSpeedWidth,paddleSpeedHeight);
  rect(leftPaddleSpeedX,leftPaddleSpeed3Y,paddleSpeedWidth,paddleSpeedHeight);
  rect(rightPaddleSpeedX,rightPaddleSpeedY,paddleSpeedWidth,paddleSpeedHeight);
  rect(rightPaddleSpeedX,leftPaddleSpeed1Y,paddleSpeedWidth,paddleSpeedHeight);
  rect(rightPaddleSpeedX,leftPaddleSpeed2Y,paddleSpeedWidth,paddleSpeedHeight);
  rect(rightPaddleSpeedX,leftPaddleSpeed3Y,paddleSpeedWidth,paddleSpeedHeight);
  rect(beginX,beginY,beginWidth,beginHeight);
  
  fill(black);
  text(winRules,rulesX,rulesY,rulesWidth,rulesHeight);
  text(leftPaddleRules,leftPaddleSpeedX,leftPaddleSpeedY,paddleSpeedWidth,paddleSpeedHeight);
  fill(#0000FF);
  text(leftPaddleRules1,leftPaddleSpeedX,leftPaddleSpeed1Y,paddleSpeedWidth,paddleSpeedHeight);
  fill(#FFA500);
  text(leftPaddleRules2,leftPaddleSpeedX,leftPaddleSpeed2Y,paddleSpeedWidth,paddleSpeedHeight);
  fill(#FF0000);
  text(leftPaddleRules3,leftPaddleSpeedX,leftPaddleSpeed3Y,paddleSpeedWidth,paddleSpeedHeight);
  fill(black);
  text(rightPaddleRules,rightPaddleSpeedX,rightPaddleSpeedY,paddleSpeedWidth,paddleSpeedHeight);
   fill(#0000FF);
  text(leftPaddleRules1,rightPaddleSpeedX,leftPaddleSpeed1Y,paddleSpeedWidth,paddleSpeedHeight);
  fill(#FFA500);
  text(leftPaddleRules2,rightPaddleSpeedX,leftPaddleSpeed2Y,paddleSpeedWidth,paddleSpeedHeight);
  fill(#FF0000);
  text(leftPaddleRules3,rightPaddleSpeedX,leftPaddleSpeed3Y,paddleSpeedWidth,paddleSpeedHeight);
  fill(black);
  
  
  
  fill(beginColor);
  text(beginRules,beginX,beginY,beginWidth,beginHeight);
  fill(white);
  
  
  if(mouseX >= beginX && mouseX <= beginX+beginWidth &&  mouseY >= beginY && mouseY <= beginY+beginHeight){
    beginColor = #DDA0DD;
  }else beginColor = 0;
  if(mouseX >= leftPaddleX && mouseX <= leftPaddleX+leftPaddleWidth);
};
