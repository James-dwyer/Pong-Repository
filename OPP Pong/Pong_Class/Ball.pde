class ball{
  float ballX, ballY, ballWidth, ballHeight;
  color ballColor;
  int ballXSpeed, ballYSpeed;
  
   ball(float x, float y, float bWidth, float bHeight, color bColor, int xSpeed, int ySpeed){
     ballX = x;
     ballY = y;
     ballWidth = bWidth;
     ballHeight = bHeight;
     ballColor = bColor;
     ballXSpeed = xSpeed;
     ballYSpeed = ySpeed;
     };
     
   void draw(){
     fill(ballColor);
     ellipse(ballX,ballY,ballWidth,ballHeight);
     
     move();
     bounce();
   };
   
   void move(){
   ballX += ballXSpeed;
   ballY += ballYSpeed;
   };
   
   void bounce(){
   if (ballY-ballHeight/2 <= height*0 || ballY+ballHeight/2 >= height) {
    ballYSpeed = ballYSpeed*-1;
  }
  if(ballX+ballWidth/2 >= width || ballX-ballWidth/2  <= width*0) ballXSpeed *= -1;   
  
  };
  
  
};
