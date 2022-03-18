//ball ball1, ball2;
ball[] Ball = new ball[10];
int counter = Ball.length - Ball.length; 

//Paddle paddle2, paddle1;
Paddle paddle;

void setup() {
  fullScreen();

  Ball[counter] = new ball(displayWidth, displayHeight);
  //paddle1 = new Paddle(width*1/50, height*1/2, width*1/85, height*2/10, #FF0000, 0);
  //paddle2 = new Paddle(width-width*1/50, height*1/2, width*1/85-width*1/85*2, height*2/10, #FF00FF, 0);
  paddle = new Paddle(displayWidth,displayHeight);
  //ball1 = new ball( width*1/2, height*1/2, width*1/75, width*1/75, #FF00FF, 6, 6);
  counter += 1;
};

void draw() {
  background(225);
  for ( int i = 0; i < counter; i++) {
    Ball[i].draw();
  }

  paddle.draw();
  //paddle2.draw();
  //collision();
};


void keyPressed() {
  if (key == CODED) {
    if (keyCode == UP) {
      paddle.paddleSpeed = -6;
    };
    if (keyCode == DOWN) {
      paddle.paddleSpeed = 6;
    };
  };
  if (key == 'w' || key == 'W') {
    paddle.paddleSpeed = -6;
  };
  if (key == 's' || key == 'S') {
    paddle.paddleSpeed = 6;
  };
};

void keyReleased() {
  if (key == CODED) {
    if (keyCode == UP) {
      paddle.paddleSpeed = 0;
    };
    if (keyCode == DOWN) {
      paddle.paddleSpeed = 0;
    };
  };
    if (key == 'w' || key == 'W') {
      paddle.paddleSpeed = 0;
    };
    if (key == 's' || key == 'S') {
      paddle.paddleSpeed = 0;
    };
  };

  void mousePressed() {
    if (counter <= 10) {
      counter+= 1;
      for (int i = counter-1; i < counter; i++) {
        Ball[i] = new ball(displayWidth, displayHeight);
      }
    }
  };
