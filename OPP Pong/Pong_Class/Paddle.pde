class Paddle {
  float paddleLX, paddleLY, paddleRY, paddleLWidth, paddleLHeight,paddleRX;
 
  float leftPaddleY;
  color pColor,pColor1;
  float lPaddleSpeed,rPaddleSpeed;
  
  boolean leftPaddleUp = false, leftPaddleDown = false;
  boolean rightPaddleUp = false, rightPaddleDown = false;


  //Paddle(float x, float y, float Width, float Height, color colour, float speed) { 
  //  paddleX = x;
  //  paddleY = y;
  //  paddleWidth = Width;
  //  paddleHeight = Height;
  //  pColor = colour;
  //  paddleSpeed = speed;
  //};
   Paddle(float Width, float Height){
     
     
     paddleLX = Width/50;
     paddleLY = Height/2;
     paddleLWidth = Width/85;
     paddleLHeight = Height/5;
     pColor = #FF0000;
     pColor1 = #0000FF;
     paddleRY = Height/2;
     paddleRX = Width - paddleLX;
     
   
   };

  void draw() {
    
    paddle();
    
  };

  void paddle() {
    fill(pColor);
    rect(paddleLX, paddleLY-paddleLHeight/2, paddleLWidth, paddleLHeight);
    fill(pColor1);
    rect(paddleRX-paddleLWidth,paddleRY-paddleLHeight/2,paddleLWidth,paddleLHeight);
    move();
  };


  void move() {
    paddleLY += lPaddleSpeed;
    paddleRY += rPaddleSpeed;
    if(paddleLY-paddleLHeight/2 <= displayHeight*0)paddleLY = displayHeight*0+paddleLHeight/2;
    if(paddleLY+paddleLHeight/2 >= displayHeight)paddleLY = displayHeight-paddleLHeight/2;
    if(paddleRY-paddleLHeight/2 <= displayHeight*0) paddleRY = displayHeight*0+paddleLHeight/2;
    if(paddleRY+paddleLHeight/2 >= displayHeight)paddleRY = displayHeight-paddleLHeight/2;
    //else if(paddleLY+paddleLHeight > height){
    //  paddleLY = height - paddleLHeight;
    //};
  };
};
;
