class ball {
  float ballX, ballY, ballDiameter;
  color ballColor;
  int ballXSpeed, ballYSpeed;

  ball(float Width, float Height) {
    ballX = int(Width/2);
    ballY = int(Height/2);
    ballDiameter = int(Width/75);
    ballColor = color((int(random(0, 255))), int(random(0, 255)), int(random(0, 255)));
    while (ballXSpeed == 0)ballXSpeed = int(random(-5, 5));
    while (ballYSpeed == 0)ballYSpeed = int(random(-5, 5));
  };

  void draw() {
    fill(ballColor);
    ellipse(ballX, ballY, ballDiameter, ballDiameter);
    fill(0);

    move();
    bounce();
    score();
  };

  void move() {
    ballX += ballXSpeed;
    ballY += ballYSpeed;
  };

  void bounce() {
    if (ballY-ballDiameter/2 <= height*0 || ballY+ballDiameter/2 >= height) {
      ballYSpeed = ballYSpeed*-1;
    }
    if (ballX+ballDiameter/2 >= width || ballX-ballDiameter/2  <= width*0) ballXSpeed *= -1;   
    //if(ballX+ballDiameter/2 >= paddle.paddleLX-paddle.paddleLWidth && ballY >= paddle.paddleLY && ballY <= paddle.paddleLY-paddle.paddleLHeight){
    //  ballXSpeed *= -1;
    //};
    if (ballX-ballDiameter/2 <= paddle.paddleLX+paddle.paddleLWidth && ballY >= paddle.paddleLY-paddle.paddleLHeight/2 && ballY <= paddle.paddleLY+paddle.paddleLHeight/2) {
      ballXSpeed *= -1;
      ballXSpeed += 1;
    };
    if (ballX+ballDiameter/2 >= paddle.paddleRX-paddle.paddleLWidth && ballY >= paddle.paddleRY-paddle.paddleRHeight/2 && ballY <= paddle.paddleRY+paddle.paddleRHeight/2) {
      ballXSpeed *= -1;
      ballXSpeed -= 1;
    };
  };
  void score() {
    if (ballX-ballDiameter/2 < leftGoal.lineX) {
      right.score = int(right.score += 1);
    };
    if (ballX+ballDiameter/2 > rightGoal.lineX) {
      left.score = int(left.score += 1);
    };
    if (ballX-ballDiameter/2 < leftGoal.lineX) {
      //counter = 1;
      //ballX = width/2;
      counter = 1;
      Ball[0].ballX = width/2;
      ballYSpeed = int(random(-6, 6));
      Ball[0].ballXSpeed = int(random(-7, 7));
      while (Ball[0].ballXSpeed == 0)Ball[0].ballXSpeed = int(random(-7, 7));
      while (Ball[0].ballYSpeed == 0)Ball[0].ballYSpeed = int(random(-6, 6));
    }
    if (ballX+ballDiameter/2 > rightGoal.lineX) {
      counter = 1;
      Ball[0].ballX = width/2;
      ballYSpeed = int(random(-6, 6));
     Ball[0].ballXSpeed = int(random(-7, 7));
      while (Ball[0].ballXSpeed == 0)Ball[0].ballXSpeed = int(random(-7, 7));
      while (Ball[0].ballYSpeed == 0)Ball[0].ballYSpeed = int(random(-6, 6));
    }
    if (left.score == 3) {
      leftWin = true;
      left.score = (int(left.score = 0));
      right.score =int(right.score = 0);
      
      };
      if(right.score == 3){
       rightWin = true;
      left.score = (int(left.score = 0));
      right.score = int(right.score = 0);
      };
  };
};
