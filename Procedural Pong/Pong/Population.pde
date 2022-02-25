void population() {
  scoreFont = createFont("Harrington", 60);
  score1 = "0";
  score2 = "0";
  textAlign (CENTER, CENTER);
  textFont(scoreFont);
  
  ballX = width*1/2;
  ballY= height*1/2;
  ballWidth = width*1/75;
  ballHeight = width*1/75;



  leftPaddleX = width*1/50;
  leftPaddleWidth = width*1/85;
  leftPaddleHeight = height*2/10;
  leftPaddleY = height*1/2-leftPaddleHeight/2;


  rightPaddleX = width-leftPaddleX;
  rightPaddleWidth = width*1/85*-1;
  rightPaddleHeight = height*2/10;
  rightPaddleY = height*1/2-rightPaddleHeight/2;


  rightNetX = rightPaddleX;
  leftNetX = leftPaddleX;
  netY = height*0;
  netY2 = height;


  sB1Y = height*0;
  sB1Width = width*5/50;
  sB1Height = height*1/8;
  sB1X = width*1/4-sB1Width/2;


  sB2Y = height*0;
  sB2Width = width*5/50;
  sB2Height = height*1/8;
  sB2X = width*3/4-sB2Width/2;

  lineX = width*1/2;
  lineY = height*0;
  lineY2 = height;
}
