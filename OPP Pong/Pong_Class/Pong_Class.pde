//ball ball1, ball2;
boolean Win = false;
boolean leftWin = false, rightWin = false;
ball[] Ball = new ball[10];
int counter = Ball.length - Ball.length; 
line leftGoal, midLine, rightGoal;
Paddle paddle;
Scoreboard left, right;
Rectangle lWin,rWin;

void setup() {
  fullScreen();
  //size(500,1000);

  Ball[counter] = new ball(displayWidth, displayHeight);
  left = new Scoreboard(width*1/4, height*0, width/10, height/8, 0);
  right = new Scoreboard(width*3/4, height*0, width/10, height/8, 0);

  lWin = new Rectangle(width*1/2, height/4, width/3, height/10,"Left Player Wins");  
  rWin = new Rectangle(width*1/2, height/4, width/3,height/10,"Right Player Wins");
  midLine = new line(width/2, height*0, width/2, height);
  paddle = new Paddle(displayWidth, displayHeight);
  rightGoal = new line(paddle.paddleRX, height*0, paddle.paddleRX, height);
  leftGoal = new line(paddle.paddleLX, height*0, paddle.paddleLX, height);

  counter += 1;
};

void draw() {
  background(225);

  if (width > height) {
    if (leftWin == false && rightWin == false) {
      for ( int i = 0; i < counter; i++) {
        Ball[i].draw();
      }
      
      paddle.draw();
      leftGoal.draw();
      midLine.draw();
      rightGoal.draw();
      left.draw();
      right.draw();
      
    } else {
      if(leftWin == true && rightWin == false){
        lWin.draw();
    }
    else if(rightWin == true && leftWin == false){
    rWin.draw();
    };
      
    };
  } else {
    noLoop(); 
    println("ERROR: HEIGHT IS GREATER THAN WIDTH");
  }
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
  if(leftWin == false && rightWin == false){
  if (counter < 10) {
    counter+= 1;
    for (int i = counter-1; i < counter; i++) {
      Ball[i] = new ball(displayWidth, displayHeight);
    }
  } else counter = 1;
  };
  if(leftWin == true || rightWin == true){
  if(mouseX >= width/4 && mouseX <= (width/4)+(width/5) && mouseY >= height/2 && mouseY <= height/2+height/15){
  leftWin = false;
  rightWin = false;
  };
  if(mouseX >= (width*3/4-width/5) && mouseX <= (width*3/4-width/5)+(width/5) && mouseY >= height/2 && mouseY <= height/2+height/15){
  exit();
  };
  };
};
