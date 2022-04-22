//ball ball1, ball2;
int paddleSpeed, rPaddleSpeed, ballSpeed;
int starNum = 5;
color white = 255, grey = 225, black = 0;
boolean redo = false;
int Width, Height;
int Diameter;

boolean Win = false, rGoal = false, lGoal = false;
boolean leftWin = false, rightWin = false, rules = true, leftPaddle = false, rightPaddle = false, startScreen = false, darkMode = false, ball = false, slow = false, regular = false, fast = false;
ball[] Ball = new ball[10];
ball[] Star = new ball[starNum];

int counter = Ball.length - Ball.length; 
line leftGoal, midLine, rightGoal;
Paddle paddle;
Scoreboard left, right;
Rectangle lWin, rWin;
rules rule, lPaddle, lPaddle1, lPaddle2, lPaddle3, rPaddle, rPaddle1, rPaddle2, rPaddle3, start, screenSaver, dark, bSpeed, bSpeed1, bSpeed2, bSpeed3;
fireWorks[] fireWorkl = new fireWorks[15];
fireWorks[] fireWorkr = new fireWorks[15];

void setup() {
  fullScreen();
  smooth();
  noStroke();
  Width = width;
  Height = height;
  Diameter = width;
  //size(500,1000);
  
  left = new Scoreboard(width*1/4, height*0, width/10, height/8, 0);
  right = new Scoreboard(width*3/4, height*0, width/10, height/8, 0);
  Ball[counter] = new ball(displayWidth, displayHeight, int(random(-7,7)));
  dark = new rules(0, height - height/20, width/6, height/20, "Dark Mode", #FF00FF);
  screenSaver = new rules(width-(width/6), height-(height/20), width/6, height/20, "ScreenSaver", #FF00FF);
  for (int i = 0; i <fireWorkr.length; i++) {
    fireWorkr[i] = new fireWorks(width*3/4, height*0);
  };
  for (int i = 0; i <fireWorkl.length; i++) {
    fireWorkl[i] = new fireWorks(width*1/4, height*0);
  };
 
  
  lPaddle = new rules(width/10, height*3/10, width/4, width/20, "Left: W and S", #FF00FF);
  lPaddle1 = new rules(width/10, height*4/10, width/4, width/20, "Slow", #0000FF);
  lPaddle2 = new rules(width/10, height*5/10, width/4, width/20, "Regular", #FF7000);
  lPaddle3 = new rules(width/10, height*6/10, width/4, width/20, "Fast", #FF0000);
  bSpeed = new rules(width/2 - lPaddle.rectWidth/2, height*3/10, width/4, width/20, "Ball Speed Increase", #FF00FF);
  bSpeed1 = new rules(width/2 - lPaddle.rectWidth/2, height*4/10, width/4, width/20, "Slow", #0000FF);
  bSpeed2 = new rules(width/2 - lPaddle.rectWidth/2, height*5/10, width/4, width/20, "Normal", #FF7000);
  bSpeed3 = new rules(width/2 - lPaddle.rectWidth/2, height*6/10, width/4, width/20, "Fast", #FF0000);
  rPaddle = new rules(width-lPaddle.rectX-lPaddle.rectWidth, height*3/10, width/4, width/20, "Right: UP and DOWN", #FF00FF);
  rPaddle1 = new rules(width-lPaddle.rectX-lPaddle.rectWidth, height*4/10, width/4, width/20, "Slow", #0000FF);
  rPaddle2 = new rules(width-lPaddle.rectX-lPaddle.rectWidth, height*5/10, width/4, width/20, "Regular", #FF7000);
  rPaddle3 = new rules(width-lPaddle.rectX-lPaddle.rectWidth, height*6/10, width/4, width/20, "Fast", #FF0000);
  rule  = new rules(width/5, height/15, width*3/5, height*2/15, "Score 3 Goals To Win The Game!", #FF00FF);
  start = new rules(width*3/10, height*5/7, width*2/5, height/8, "To Start The Game Click HERE! Press Q anytime to Quit", #FF00FF);
  lWin = new Rectangle(width*1/2, height/4, width/3, height/10, "Left Player Wins");  
  rWin = new Rectangle(width*1/2, height/4, width/3, height/10, "Right Player Wins");
  midLine = new line(width/2, height*0, width/2, height);
  paddle = new Paddle(displayWidth, displayHeight);
  rightGoal = new line(paddle.paddleRX, height*0, paddle.paddleRX, height);
  leftGoal = new line(paddle.paddleLX, height*0, paddle.paddleLX, height);
  starSetup();

  

  counter += 1;
};

void draw() {
  if (darkMode == false) { 
    background(grey);
  } else background(black);

  if (width > height) {
    if (rules == false && leftPaddle == true && rightPaddle == true && startScreen == false && ball == true) {
      println(Ball[0].ballXSpeed);
      
      gameStart();
    } else if (startScreen == true) {
      regular = true;
      gameStart();
    } else ruleScreen();
  } else {
    noLoop(); 
    println("ERROR: HEIGHT IS GREATER THAN WIDTH");
  }
};

void keyPressed() {
  if (key == CODED) {
    if (keyCode == UP) {
      paddle.rPaddleSpeed = -rPaddleSpeed;
    };
    if (keyCode == DOWN) {
      paddle.rPaddleSpeed = rPaddleSpeed;
    };
  };
  if (key == 'w' || key == 'W') {
    paddle.lPaddleSpeed = -paddleSpeed;
  };
  if (key == 's' || key == 'S') {
    paddle.lPaddleSpeed = paddleSpeed;
  };
  if (key == 'q' || key == 'Q') {
    exit();
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
  if (leftWin == false && rightWin == false && rules == false) {
    if (counter < 10) {
      counter+= 1;
      for (int i = counter-1; i < counter; i++) {
        Ball[i] = new ball(displayWidth, displayHeight, ballSpeed);
      }
    } else counter = 1;
  };
  if (leftWin == true || rightWin == true) {
    if (mouseX >= width/4 && mouseX <= (width/4)+(width/5) && mouseY >= height/2 && mouseY <= height/2+height/15) {
      leftWin = false;
      rightWin = false;
    };
    if (mouseX >= (width*3/4-width/5) && mouseX <= (width*3/4-width/5)+(width/5) && mouseY >= height/2 && mouseY <= height/2+height/15) {
      exit();
    };
  };
  if (mouseX >= screenSaver.rectX && mouseX <= screenSaver.rectX+screenSaver.rectWidth && mouseY >= screenSaver.rectY && mouseY <= screenSaver.rectY +screenSaver.rectHeight) {
    leftPaddle = true;
    ballSpeed = 5;
    rightPaddle = true;
    rules=false;
    startScreen=true;
  };

  if (paddle.lPaddleSpeed == 0) {
    if (mouseX >= lPaddle1.rectX && mouseX <= lPaddle1.rectX + lPaddle1.rectWidth && mouseY >= lPaddle1.rectY && mouseY <= lPaddle1.rectY + lPaddle1.rectHeight) {
      paddleSpeed = 3;

      leftPaddle = true;
    };
    if (mouseX >= lPaddle2.rectX && mouseX <= lPaddle2.rectX + lPaddle2.rectWidth && mouseY >= lPaddle2.rectY && mouseY <= lPaddle2.rectY + lPaddle2.rectHeight) {
      paddleSpeed = 6;

      leftPaddle = true;
    };
    if (mouseX >= lPaddle3.rectX && mouseX <= lPaddle3.rectX + lPaddle3.rectWidth && mouseY >= lPaddle3.rectY && mouseY <= lPaddle3.rectY + lPaddle3.rectHeight) {
      paddleSpeed = 10;

      leftPaddle = true;
    };
  };
  if (paddle.rPaddleSpeed == 0) {
    if (mouseX >= rPaddle1.rectX && mouseX <= rPaddle1.rectX + rPaddle1.rectWidth && mouseY >= rPaddle1.rectY && mouseY <= rPaddle1.rectY + rPaddle1.rectHeight) {
      rPaddleSpeed = 3;

      rightPaddle = true;
    };
    if (mouseX >= rPaddle2.rectX && mouseX <= rPaddle2.rectX + rPaddle2.rectWidth && mouseY >= rPaddle2.rectY && mouseY <= rPaddle2.rectY + rPaddle2.rectHeight) {
      rPaddleSpeed = 6;

      rightPaddle = true;
    };
    if (mouseX >= rPaddle3.rectX && mouseX <= rPaddle3.rectX + rPaddle3.rectWidth && mouseY >= rPaddle3.rectY && mouseY <= rPaddle3.rectY  + rPaddle3.rectHeight) {
      rPaddleSpeed = 10;
      rightPaddle = true;
    };

    if (mouseX >= bSpeed1.rectX && mouseX <= bSpeed1.rectX + bSpeed1.rectWidth && mouseY >= bSpeed1.rectY && mouseY <= bSpeed1.rectY + bSpeed1.rectHeight) {
      ballSpeed = 2;
      slow = true;
      ball = true;
    };
    if (mouseX >= bSpeed2.rectX && mouseX <= bSpeed2.rectX + bSpeed2.rectWidth && mouseY >= bSpeed2.rectY && mouseY <= bSpeed2.rectY + bSpeed2.rectHeight) {
      ballSpeed = 4;
      regular = true;
      ball = true;
    };
    if (mouseX >= bSpeed3.rectX && mouseX <= bSpeed3.rectX + bSpeed3.rectWidth && mouseY >= bSpeed3.rectY && mouseY <= bSpeed3.rectY + bSpeed3.rectHeight) {
      ballSpeed = 6;
      fast = true;
      ball = true;
    };
    if (mouseX >= dark.rectX && mouseX <= dark.rectX + dark.rectWidth && mouseY >= dark.rectY && mouseY <= dark.rectY + dark.rectHeight) {
      darkMode = true;
    };
  };
  if (mouseX >= start.rectX && mouseX <= start.rectX + start.rectWidth && mouseY >= start.rectY && mouseY <= start.rectY + start.rectHeight) {
    rules = false;
  };
};
