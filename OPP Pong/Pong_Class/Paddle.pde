class Paddle {
  float paddleX, paddleY, rPaddleY, paddleWidth, paddleHeight;
  float leftPaddleY;
  color pColor;
  float paddleSpeed;
  boolean leftPaddleUp = false, leftPaddleDown = false;
  boolean rightPaddleUp = false, rightPaddleDown = false;


  Paddle(float x, float y, float Width, float Height, color colour, float speed) { 
    paddleX = x;
    paddleY = y;
    paddleWidth = Width;
    paddleHeight = Height;
    pColor = colour;
    paddleSpeed = speed;
  };

  void draw() {
    fill(pColor);
    paddle();
  };

  void paddle() {
    rect(paddleX, paddleY-paddleHeight/2, paddleWidth, paddleHeight);

    move();
  };


  void move() {
    paddleY += paddleSpeed;
  };
};
;
