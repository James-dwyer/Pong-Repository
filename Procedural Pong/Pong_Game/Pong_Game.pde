float leftPaddleX, leftPaddleY, leftPaddleWidth, leftPaddleHeight, leftPaddleSpeed = -6;
float rightPaddleX, rightPaddleY, rightPaddleWidth, rightPaddleHeight, rightPaddleSpeed = -6;
float ballX, ballY, ballWidth, ballHeight;
float leftNetX, netY, leftNetX2, netY2, rightNetX;
float sB1X, sB2X, sB1Y, sB2Y, sB1Width, sB2Width, sB2Height, sB1Height;
float lineX, lineY, lineY2;
boolean leftGoalScore, rightGoalScore;
int ballXSpeed, ballYSpeed;
PFont scoreFont, rulesFont;
String score1, score2,winRules,leftPaddleRules,rightPaddleRules,beginRules;
boolean player1, player2;
color ballColor = 255;
float leftPaddleSpeedX, leftPaddleSpeedY, paddleSpeedWidth, paddleSpeedHeight, rightPaddleSpeedY, rightPaddleSpeedX;
float rulesX,rulesY,rulesWidth,rulesHeight;
float beginX,beginY,beginWidth,beginHeight;
boolean rules = true, leftPaddle = false, rightPaddle = false;

;


void setup() {
  fullScreen();

  population();

  ballYSpeed = int(random(-4, 4));
  ballXSpeed = int(random(-9, 9));
  while (ballYSpeed == 0) ballYSpeed = int(random(-4, 4));
  while (ballXSpeed == 0) ballXSpeed = int(random(-9, 9));
};



void draw() {

  if(width>height){
    if(rules == false && leftPaddle == true && rightPaddle == true){gameStart();}
      else startPage();
    ;
  }else{println("flip Screen to play");};
  


};

void keyPressed() {
  if (key == 'q' || key == 'Q') {
    exit();
  };

  leftPaddleKeyPressed();
  rightPaddleKeyPressed();

}
