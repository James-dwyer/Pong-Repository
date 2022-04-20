class Rectangle {
  float winX, winY, winWidth, winHeight;
  String winText;
  PFont winFont;
  color textColor, textColor1;

  Rectangle(float X, float Y, float Width, float Height, String Text) {

    winY = Y;
    winWidth = Width;
    winHeight = Height;
    winX = X-winWidth/2;

    textColor = #FF00FF;
    textColor1 = #ff00ff;
    winFont = createFont("arial", 40);
    textFont(winFont);

    textAlign (CENTER, CENTER);
    //if(rightWin == true) winText = "Right Player Wins!";
    winText = Text;
  };
  void draw() {
    //stroke(0);
    fill(255);
    rect(winX, winY, winWidth, winHeight);
    fill(#FF00FF);

    text(winText, winX, winY, winWidth, winHeight);
    fill(255);
    rect(width/4, height/2, width/5, height/15);
    fill(textColor);
    text("Play Again", width/4, height/2, width/5, height/15);
    fill(255);
    rect(width*3/4-width/5, height/2, width/5, height/15);
    fill(textColor1);
    text("Quit", width*3/4-width/5, height/2, width/5, height/15);
    //fill(#5090FF);
    hover();
    //rect(winX, winY, winWidth, winHeight);
  };
  void hover() {
    if (mouseX >= width/4 && mouseX <= (width/4)+(width/5) && mouseY >= height/2 && mouseY <= height/2+height/15) {
      textColor = #FF80FF;
    } else textColor = #FF00FF;
    if (mouseX >= (width*3/4-width/5) && mouseX <= (width*3/4-width/5)+(width/5) && mouseY >= height/2 && mouseY <= height/2+height/15) {
      textColor1 = #FF80FF;
    } else textColor1 = #FF00FF;
  };
};
