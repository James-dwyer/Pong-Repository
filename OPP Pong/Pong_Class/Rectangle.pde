class Rectangle {
  float winX, winY, winWidth, winHeight;
  String winText;
  PFont winFont;

  Rectangle(float X,float Y,float Width, float Height, String Text) {

    winY = Y;
    winWidth = Width;
    winHeight = Height;
    winX = X-winWidth/2;
    


    winFont = createFont("arial", 60);
    textFont(winFont);

    textAlign (CENTER, CENTER);
    //if(rightWin == true) winText = "Right Player Wins!";
    winText = Text;
};
  void draw(){
     //stroke(0);
     fill(0);
    text(winText,winX, winY, winWidth, winHeight);
    //fill(#5090FF);
    
    //rect(winX, winY, winWidth, winHeight);
 
  };

};
