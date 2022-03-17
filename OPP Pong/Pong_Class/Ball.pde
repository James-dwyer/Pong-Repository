class ball{
  float ballX, ballY, ballDiameter;
  color ballColor;
  int ballXSpeed, ballYSpeed;
  
   ball(float Width, float Height){
     ballX = int(Width/2);
     ballY = int(Height/2);
     ballDiameter = int(Width/75);
     ballColor = color(#FF00FF);
     while(ballXSpeed == 0)ballXSpeed = int(random(-5,5));
     while(ballYSpeed == 0)ballYSpeed = int(random(-5,5));
     };
     
   void draw(){
     fill(ballColor);
     ellipse(ballX,ballY,ballDiameter,ballDiameter);
     fill(0);
     
     move();
     bounce();
   };
   
   void move(){
   ballX += ballXSpeed;
   ballY += ballYSpeed;
   };
   
   void bounce(){
   if (ballY-ballDiameter/2 <= height*0 || ballY+ballDiameter/2 >= height) {
    ballYSpeed = ballYSpeed*-1;
  }
  if(ballX+ballDiameter/2 >= width || ballX-ballDiameter/2  <= width*0) ballXSpeed *= -1;   
   if(ballX+ballDiameter/2 >= paddle2.paddleX-paddle2.paddleWidth && ballY >= paddle2.paddleY && ballY <= paddle2.paddleY-paddle2.paddleHeight){
     ballXSpeed *= -1;
   };
  };
 
 
};
