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
    leftPaddle();
  };

  void leftPaddle() {
    rect(paddleX, paddleY-paddleHeight/2, paddleWidth, paddleHeight);
    if (key == 'w'|| key == 'W') {
      leftPaddleUp = true;
      leftPaddleDown = false;
    }
    if (key == 's' || key == 's') {
      leftPaddleUp = false;
      leftPaddleDown = true;
    };
    if (key == 'a' || key == 'A') {
      leftPaddleUp = false;
      leftPaddleDown = false;
    };
    move();
  };


  void move() {
    if (leftPaddleUp == true) {
      paddleY -= paddleSpeed;
    };
    if (leftPaddleDown == true && leftPaddleUp == false) {
      paddleY += paddleSpeed;
    };
  };
};

class rPaddle {

  float paddleX, rPaddleY, paddleWidth, paddleHeight;
  float leftPaddleY;
  color pColor;
  float paddleSpeed;
  boolean leftPaddleUp = false, leftPaddleDown = false;
  boolean rightPaddleUp = false, rightPaddleDown = false;

  rPaddle(float x, float y, float Width, float Height, color colour, float speed) { 
    paddleX = x;
    rPaddleY = y;
    paddleWidth = Width;
    paddleHeight = Height;
    pColor = colour;
    paddleSpeed = speed;
  };

  void draw() {
    fill(pColor);
    rightPaddle();
  };

  void rightPaddle() {
    rect(paddleX-width, rPaddleY-paddleHeight/2, paddleWidth-paddleWidth/2, paddleHeight);
    if (key == CODED) {
      if (keyCode == UP) {
        rightPaddleUp = true;
        rightPaddleDown = false;
      }
      if (keyCode == DOWN) {
        rightPaddleUp = false;
        rightPaddleDown = true;
      };
      if (keyCode == LEFT) {
        rightPaddleUp = false;
        rightPaddleDown = false;
      };
    };
    pMove();
  }
  void pMove() {
    if (rightPaddleUp == true) rPaddleY -= paddleSpeed;
    if (rightPaddleDown == true) rPaddleY += paddleSpeed;
  };
};
