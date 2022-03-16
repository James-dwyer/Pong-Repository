ball ball1, ball2;
Paddle lPaddle;
rPaddle paddle;

void setup() {
  fullScreen();

  lPaddle = new Paddle(width*1/50, height*1/2, width*1/85, height*2/10, #FF0000, 6);
  paddle = new rPaddle(width, height*1/2, width*1/85-width*1/85*2, height*2/10, #FF0000, 6);
  ball1 = new ball( width*1/2, height*1/2, width*1/75, width*1/75, #FF00FF, 6, 6);
  ball2 = new ball(width*1/2, height*1/2, width*1/75, width*1/75, color(random(255), random(255), random(255)), int(random(3, 7)), 6);
};

void draw() {
  background(225);
  ball1.draw();
  ball2.draw();
  lPaddle.draw();
  paddle.draw();
};
