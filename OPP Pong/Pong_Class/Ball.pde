class ball {
  float ballX, ballY, ball1Y, ballDiameter, ball1Diameter, ball1X;
  color ballColor;
  int ballXSpeed, ballYSpeed;

  ball(float Width, float Height, int bSpeed) {
    ballX = int(Width/2);
    ballY = int(Height/2);
    ballDiameter = int(Width/75);
    ballColor = color((int(random(0, 255))), int(random(0, 255)), int(random(0, 255)));
    ballXSpeed = bSpeed;
    //ballSpeed = ballSpeed;

    while (ballXSpeed == 0)ballXSpeed = int(random(-7,7));


    while (ballYSpeed == 0)ballYSpeed = int(random(-5, 5));
  };
  ball(float Width, float Height, float Diameter) {
    ball1X = int(Width);
    ball1Y = int(Height);
    ball1Diameter = int(Diameter);
  };

  void draw() {
    fill(ballColor);
    ellipse(ballX, ballY, ballDiameter, ballDiameter);
    if (darkMode == false) { 
      fill(black);
    } else fill(grey);

    move();
    bounce();
    score();
    ballBounce();
  };

  void starDraw() {

    fill(90);
    ellipse(ball1X, ball1Y, ball1Diameter, ball1Diameter);
    if (darkMode == false) { 
      fill(black);
    } else fill(grey);
    ballBounce();
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
    if (ballXSpeed >= 20 || ballXSpeed <= -20) {
      if (ballX-ballDiameter/2 <= paddle.paddleLX+paddle.paddleLWidth && ballY >= paddle.paddleLY-paddle.paddleLHeight/2 && ballY <= paddle.paddleLY+paddle.paddleLHeight/2) {
        ballXSpeed *= -1;
        ballXSpeed = 20;
        ballYSpeed = int(random(-6, 6));
        while (ballYSpeed == 0) ballYSpeed = int(random(-6, 6));
      };
      if (ballX+ballDiameter/2 >= paddle.paddleRX-paddle.paddleLWidth && ballY >= paddle.paddleRY-paddle.paddleRHeight/2 && ballY <= paddle.paddleRY+paddle.paddleRHeight/2) {
        ballXSpeed *= -1;
        ballXSpeed = -20;
        ballYSpeed = int(random(-6, 6));
      };
    } else {
      if (slow == true) {
        if (ballX-ballDiameter/2 <= paddle.paddleLX+paddle.paddleLWidth && ballY >= paddle.paddleLY-paddle.paddleLHeight/2 && ballY <= paddle.paddleLY+paddle.paddleLHeight/2) {
          ballXSpeed *= -1;
          ballXSpeed += 1;
        };
        if (ballX+ballDiameter/2 >= paddle.paddleRX-paddle.paddleLWidth && ballY >= paddle.paddleRY-paddle.paddleRHeight/2 && ballY <= paddle.paddleRY+paddle.paddleRHeight/2) {
          ballXSpeed *= -1;
          ballXSpeed -= 1;
        };
      } else if (regular == true) {
        if (ballX-ballDiameter/2 <= paddle.paddleLX+paddle.paddleLWidth && ballY >= paddle.paddleLY-paddle.paddleLHeight/2 && ballY <= paddle.paddleLY+paddle.paddleLHeight/2) {
          ballXSpeed *= -1;
          ballXSpeed += 2;
        };
        if (ballX+ballDiameter/2 >= paddle.paddleRX-paddle.paddleLWidth && ballY >= paddle.paddleRY-paddle.paddleRHeight/2 && ballY <= paddle.paddleRY+paddle.paddleRHeight/2) {
          ballXSpeed *= -1;
          ballXSpeed -= 2;
        };
      } else if (fast == true) {
        if (ballX-ballDiameter/2 <= paddle.paddleLX+paddle.paddleLWidth && ballY >= paddle.paddleLY-paddle.paddleLHeight/2 && ballY <= paddle.paddleLY+paddle.paddleLHeight/2) {
          ballXSpeed *= -1;
          ballXSpeed += 3;
        };
        if (ballX+ballDiameter/2 >= paddle.paddleRX-paddle.paddleLWidth && ballY >= paddle.paddleRY-paddle.paddleRHeight/2 && ballY <= paddle.paddleRY+paddle.paddleRHeight/2) {
          ballXSpeed *= -1;
          ballXSpeed -= 3;
        };
      };
    };
  };
  void score() {
    if (ballX-ballDiameter/2 < leftGoal.lineX) {
      right.score = int(right.score += 1);
      //paddle.paddleLY = height/2+paddle.paddleLHeight/2;
      //paddle.paddleRY = height/2+paddle.paddleRHeight/2;
      paddle.paddleLY = height/2;
      paddle.paddleRY = height/2;
      rGoal = true;
    };
    if (rGoal == true) {

      for (int i = 0; i <fireWorkr.length; i++) {
        fireWorkr[i].draw();
      };
      if (fireWorkr[fireWorkr.length-1].fireY > height) {
        rGoal = false;
        for (int i = 0; i <fireWorkr.length; i++) {
          fireWorkr[i].fireY = 0;
          fireWorkr[i].ySpeed = random(-5, 5);
        };


        ;
      }
    };
    if (ballX+ballDiameter/2 > rightGoal.lineX) {
      left.score = int(left.score += 1);
      //paddle.paddleLY = displayHeight*0+paddle.paddleLHeight/2;
      //paddle.paddleRY = displayHeight*0+paddle.paddleRHeight/2;
      paddle.paddleLY = height/2;
      paddle.paddleRY = height/2;
      lGoal = true;
    };
    if (lGoal == true) {

      for (int i = 0; i <fireWorkl.length; i++) {
        fireWorkl[i].draw();
      };
      if (fireWorkl[fireWorkl.length-1].fireY > height) {
        lGoal = false;
        for (int i = 0; i <fireWorkl.length; i++) {
          fireWorkl[i].fireY = 0;
          fireWorkl[i].ySpeed = random(-5, 5);
        };

        ;
      }
    };
    if (ballX-ballDiameter/2 < leftGoal.lineX) {
      //counter = 1;
      //ballX = width/2;
      counter = 1;
      Ball[0].ballX = width/2;
      ballYSpeed = int(random(-6, 6));
      
      if (slow == true) {
        ballXSpeed = 3;
      } else if (regular == true) {
        ballXSpeed = 4;
      } else if ( fast == true) {
        ballXSpeed = 6;
      };
      //Ball[0].ballXSpeed = int(random(-7, 7));
      //while (Ball[0].ballXSpeed == 0)Ball[0].ballXSpeed = int(random(-7, 7));
      while (Ball[0].ballYSpeed == 0)Ball[0].ballYSpeed = int(random(-6, 6));
    }
    if (ballX+ballDiameter/2 > rightGoal.lineX) {

      counter = 1;
      Ball[0].ballX = width/2;
      ballYSpeed = int(random(-6, 6));
      if (slow == true) {
        ballXSpeed = 3;
      } else if (regular == true) {
        ballXSpeed = 4;
      } else if ( fast == true) {
        ballXSpeed = 6;
      };
      //Ball[0].ballXSpeed = int(random(-7, 7));
      // while (Ball[0].ballXSpeed == 0)Ball[0].ballXSpeed = int(random(-7, 7));
      while (Ball[0].ballYSpeed == 0)Ball[0].ballYSpeed = int(random(-6, 6));
    }
    if (left.score == 3) {
      leftWin = true;
      left.score = (int(left.score = 0));
      right.score =int(right.score = 0);
    };
    if (right.score == 3) {
      rightWin = true;
      left.score = (int(left.score = 0));
      right.score = int(right.score = 0);
    };
  };

  void ballBounce() {
    //  for(int i = 0; i < Ball.length; i++){
    //  for(int X = Star.length-1; X > i; X--){
    //  if(dist(Ball[i].ballX,Ball[i].ballY,Star[X].ball1X,Star[X].ball1Y) < Star[X].ballDiameter/2 + Ball[i].ballDiameter/2){
    //  ballXSpeed *= -1;
    //  //ballY *= -1;
    //  println("hello");
    //  };
    //};
    //  };

    if (dist(Ball[0].ballX, Ball[0].ballY, ball1X, ball1Y) <= ball1Diameter/2 + Ball[0].ballDiameter/2) {
      Ball[0].ballXSpeed *= -1;
      //Ball[0].ballYSpeed *= -1;
      //println("hello");
    };
  };
};
