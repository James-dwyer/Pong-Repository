class Paddle {
  float paddleLX, paddleLY, PaddleRY, paddleLWidth, paddleLHeight;
 
  float leftPaddleY;
  color pColor;
  float paddleSpeed;
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
     
   
   };

  void draw() {
    fill(pColor);
    paddle();
    
  };

  void paddle() {
    rect(paddleLX, paddleLY-paddleLHeight/2, paddleLWidth, paddleLHeight);

    move();
  };


  void move() {
    paddleLY += paddleSpeed;
    if(paddleLY <= displayHeight*0)paddleLY = 0;
    //else if(paddleLY+paddleLHeight > height){
    //  paddleLY = height - paddleLHeight;
    //};
  };
};
;
