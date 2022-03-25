class Rectangle{
  float winX,winY,winWidth,winHeight;
  String winText;
  PFont winFont;
  
  Rectangle(float Width,float Height){
  
  winY = Height/4;
  winWidth = Width/4;
  winHeight = Height/25;
  winX = Width/2-winWidth/2;
  
  
  winFont = createFont("arial",60);
   textFont(winFont);

    textAlign (CENTER, CENTER);
  if(left.score == 3) winText = "Right Player Wins!";
  else winText = "Left Player Wins!";
 
  };
  
  void draw(){
  //fill(#5090FF);
  //rect(winX,winY,winWidth,winHeight);
  fill(0);
  text(winText,winX,winY,winWidth,winHeight);
  
  };
  
  
  
  
  
};
