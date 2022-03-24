class Paddle {
  float paddleLX, paddleLY, paddleRY, paddleLWidth, paddleLHeight, paddleRX, paddleRHeight;

  float leftPaddleY;
  color pColor, pColor1;
  float lPaddleSpeed, rPaddleSpeed;


  Paddle(float Width, float Height) {


    paddleLX = Width/50;
    paddleLY = Height/2;
    paddleLWidth = Width/85;
    paddleLHeight = Height/5;
    paddleRHeight = Height/5;
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
    rect(paddleRX-paddleLWidth, paddleRY-paddleRHeight/2, paddleLWidth, paddleRHeight);
    move();
    pDecrease();
  };


  void move() {
    paddleLY += lPaddleSpeed;
    paddleRY += rPaddleSpeed;
    if (paddleLY-paddleLHeight/2 <= displayHeight*0)paddleLY = displayHeight*0+paddleLHeight/2;
    if (paddleLY+paddleLHeight/2 >= displayHeight)paddleLY = displayHeight-paddleLHeight/2;
    if (paddleRY-paddleRHeight/2 <= displayHeight*0) paddleRY = displayHeight*0+paddleRHeight/2;
    if (paddleRY+paddleRHeight/2 >= displayHeight)paddleRY = displayHeight-paddleRHeight/2;
    //else if(paddleLY+paddleLHeight > height){
    //  paddleLY = height - paddleLHeight;
    //};
  };
  void pDecrease() {
    if (left.score == 0) paddleLHeight = height/5;
    if (left.score == 1) {
      paddleLHeight = height/8;
    };
    if (left.score == 2)paddleLHeight = height/10;
    if (right.score == 0) paddleRHeight = height/5;
    if (right.score == 1) {
      paddleRHeight = height/8;
    };
    if (right.score == 2)paddleRHeight = height/10;
  };
};
;
