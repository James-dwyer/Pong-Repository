void population() {
  scoreFont = createFont("Harrington", 60);
  score1 = "0";
  score2 = "0"; 
  textFont(scoreFont);
  //Press E for Slow, Press B for Regular, Press F for Fast!
  rulesFont = createFont("arial",60);
  winRules = "Score 3 Goals To Win The Game!";
  beginRules = "To Start The Game Click HERE! Press Q at anytime to Quit the game";
  textFont(rulesFont);
  
  paddleFont = createFont("arial",30);
  leftPaddleRules = "FOR LEFT PADDLE:";
  leftPaddleRules1 = "Click Here for Slow Paddle";
  leftPaddleRules2 = "Click Here for Regular Paddle";
  leftPaddleRules3 = "Click Here for Fast Paddle";
  rightPaddleRules = "FOR RIGHT PADDLE:";
  textFont(paddleFont);
  
  textAlign (CENTER, CENTER);
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
  
  rulesX = width*1/5;
  rulesY = height*1/15;
  rulesWidth = width*3/5;
  rulesHeight = height*2/15;
  
  leftPaddleSpeedX = width*1/10;
  leftPaddleSpeedY = height*3/10;
  leftPaddleSpeed1Y = height*4/10;
  leftPaddleSpeed2Y = height*5/10;
  leftPaddleSpeed3Y = height*6/10;
  paddleSpeedWidth = width*2/8;
  paddleSpeedHeight = height*1/20;
  rightPaddleSpeedX = width - leftPaddleSpeedX - paddleSpeedWidth;
  rightPaddleSpeedY = height*2/7;
  
  beginX = width*3/10;
  beginY = height*5/7;
  beginWidth = width*2/5;
  beginHeight = height*1/8;
}
