//ball ball1, ball2;
ball[] Ball = new ball[10];
int counter = Ball.length - Ball.length; 
line leftGoal, midLine, rightGoal;
Paddle paddle;

void setup() {
  fullScreen();

  Ball[counter] = new ball(displayWidth, displayHeight);
  leftGoal = new line(width/50,height*0,width/50,height);
  midLine = new line(width/2,height*0,width/2,height);
  
  paddle = new Paddle(displayWidth,displayHeight);
  rightGoal = new line(paddle.paddleRX,height*0,paddle.paddleRX,height);

  counter += 1;
};

void draw() {
  background(225);
  for ( int i = 0; i < counter; i++) {
    Ball[i].draw();
  }

  paddle.draw();
  leftGoal.draw();
  midLine.draw();
  rightGoal.draw();
  //paddle2.draw();
  //collision();
};


void keyPressed() {
  if (key == CODED) {
    if (keyCode == UP) {
      paddle.rPaddleSpeed = -6;
    };
    if (keyCode == DOWN) {
      paddle.rPaddleSpeed = 6;
    };
  };
  if (key == 'w' || key == 'W') {
    paddle.lPaddleSpeed = -6;
  };
  if (key == 's' || key == 'S') {
    paddle.lPaddleSpeed = 6;
  };
};

void keyReleased() {
  if (key == CODED) {
    if (keyCode == UP) {
      paddle.rPaddleSpeed = 0;
    };
    if (keyCode == DOWN) {
      paddle.rPaddleSpeed = 0;
    };
  };
    if (key == 'w' || key == 'W') {
      paddle.lPaddleSpeed = 0;
    };
    if (key == 's' || key == 'S') {
      paddle.lPaddleSpeed = 0;
    };
  };

  void mousePressed() {
    if (counter < 10) {
      counter+= 1;
      for (int i = counter-1; i < counter; i++) {
        Ball[i] = new ball(displayWidth, displayHeight);
      } 
    }else counter = 1;
  };
