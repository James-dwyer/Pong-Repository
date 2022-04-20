class rules {
  int rectX, rectY, rectWidth, rectHeight;
  String ruleText;
  PFont ruleFont;
  color textColor;

  rules(int X, int Y, int Width, int Height, String Text, color Color) {
    rectX = X;
    rectY = Y;
    rectWidth = Width;
    rectHeight = Height;
    ruleText = Text;


    ruleFont = createFont("arial", 30);
    textAlign(CENTER, CENTER);
    textColor = Color;
  };

  void draw() {
    fill(255);
    rect(rectX, rectY, rectWidth, rectHeight);
    fill(textColor);
    text(ruleText, rectX, rectY, rectWidth, rectHeight);
    hover();
  };

  void hover() {
    if (mouseX >= lPaddle1.rectX && mouseX <= lPaddle1.rectX + lPaddle1.rectWidth && mouseY >= lPaddle1.rectY && mouseY <= lPaddle1.rectY + lPaddle1.rectHeight) {
      lPaddle1.textColor = #9030FF;
    } else lPaddle1.textColor = #0000FF;
    if (mouseX >= lPaddle2.rectX && mouseX <= lPaddle2.rectX + lPaddle2.rectWidth && mouseY >= lPaddle2.rectY && mouseY <= lPaddle2.rectY + lPaddle2.rectHeight) {
      lPaddle2.textColor = #FF3030;
    } else lPaddle2.textColor = #FF7040;
    if (mouseX >= lPaddle3.rectX && mouseX <= lPaddle3.rectX + lPaddle3.rectWidth && mouseY >= lPaddle3.rectY && mouseY <= lPaddle3.rectY + lPaddle3.rectHeight) {
      lPaddle3.textColor =  #FF6000;
    } else lPaddle3.textColor = #FF0000;

    if (mouseX >= rPaddle1.rectX && mouseX <= rPaddle1.rectX + rPaddle1.rectWidth && mouseY >= rPaddle1.rectY && mouseY <= rPaddle1.rectY + rPaddle1.rectHeight) {
      rPaddle1.textColor = #9030FF;
    } else rPaddle1.textColor = #0000FF;
    if (mouseX >= rPaddle2.rectX && mouseX <= rPaddle2.rectX + rPaddle2.rectWidth && mouseY >= rPaddle2.rectY && mouseY <= rPaddle2.rectY + rPaddle2.rectHeight) {
      rPaddle2.textColor = #FF3030;
    } else rPaddle2.textColor = #FF7040;
    if (mouseX >= rPaddle3.rectX && mouseX <= rPaddle3.rectX + rPaddle3.rectWidth && mouseY >= rPaddle3.rectY && mouseY <= rPaddle3.rectY  + rPaddle3.rectHeight) {
      rPaddle3.textColor =  #FF6000;
    } else rPaddle3.textColor = #FF0000;
    
    if(mouseX >= bSpeed1.rectX && mouseX <= bSpeed1.rectX + bSpeed1.rectWidth && mouseY >= bSpeed1.rectY && mouseY <= bSpeed1.rectY +bSpeed1.rectHeight){
      bSpeed1.textColor = #9030FF;
    }else bSpeed1.textColor = #0000FF;
    if(mouseX >= bSpeed2.rectX && mouseX <= bSpeed2.rectX + bSpeed2.rectWidth && mouseY >= bSpeed2.rectY && mouseY <= bSpeed2.rectY +bSpeed2.rectHeight){
      bSpeed2.textColor = #FF3030;
    }else bSpeed2.textColor = #FF7040;
    if(mouseX >= bSpeed3.rectX && mouseX <= bSpeed3.rectX + bSpeed3.rectWidth && mouseY >= bSpeed3.rectY && mouseY <= bSpeed3.rectY +bSpeed3.rectHeight){
      bSpeed3.textColor = #FF6000;
    }else bSpeed3.textColor = #FF0000;
    
    
  };
};












void ruleScreen() {
  rule.draw();
  start.draw();
  lPaddle.draw();
  lPaddle1.draw();
  lPaddle2.draw();
  lPaddle3.draw();
  rPaddle.draw();
  rPaddle1.draw();
  rPaddle2.draw();
  rPaddle3.draw();
  screenSaver.draw();
  dark.draw();
  bSpeed.draw();
  bSpeed1.draw();
  bSpeed2.draw();
  bSpeed3.draw();
};
