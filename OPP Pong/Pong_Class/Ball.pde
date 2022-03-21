class ball{
  float ballX, ballY, ballDiameter;
  color ballColor;
  int ballXSpeed, ballYSpeed;
  
   ball(float Width, float Height){
     ballX = int(Width/2);
     ballY = int(Height/2);
     ballDiameter = int(Width/75);
     ballColor = color((int(random(0,255))),int(random(0,255)),int(random(0,255)));
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
   //if(ballX+ballDiameter/2 >= paddle.paddleLX-paddle.paddleLWidth && ballY >= paddle.paddleLY && ballY <= paddle.paddleLY-paddle.paddleLHeight){
   //  ballXSpeed *= -1;
   //};
   if(ballX-ballDiameter/2 <= paddle.paddleLX+paddle.paddleLWidth && ballY >= paddle.paddleLY-paddle.paddleLHeight/2 && ballY <= paddle.paddleLY+paddle.paddleLHeight/2){
   ballXSpeed *= -1;
   };
    if(ballX+ballDiameter/2 >= paddle.paddleRX-paddle.paddleLWidth && ballY >= paddle.paddleRY-paddle.paddleLHeight/2 && ballY <= paddle.paddleRY+paddle.paddleLHeight/2){
   ballXSpeed *= -1;
   };
   if(ballX-ballDiameter/2 < leftLine.lineX){
    ballX = width*0;
    ballYSpeed = 0;
    }
    if(ballX+ballDiameter/2 > rightLine.lineX){
    ballX = width;
    ballYSpeed = 0;
    }
  };
    
 
};
