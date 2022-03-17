ball ball1, ball2;
Paddle paddle2,paddle1;

void setup() {
  fullScreen();

  paddle1 = new Paddle(width*1/50, height*1/2, width*1/85, height*2/10, #FF0000, 0);
  paddle2 = new Paddle(width-width*1/50, height*1/2, width*1/85-width*1/85*2, height*2/10, #FF00FF, 0);
  ball1 = new ball( width*1/2, height*1/2, width*1/75, width*1/75, #FF00FF, 6, 6);
  ball2 = new ball(width*1/2, height*1/2, width*1/75, width*1/75, color(random(255), random(255), random(255)), int(random(3, 7)), 6);
};

void draw() {
  background(225);
  ball1.draw();
  ball2.draw();
  paddle1.draw();
  paddle2.draw();
  collision();
};


void keyPressed(){
  
    if(keyCode == UP){
    paddle2.paddleSpeed = -6;
    };
    if(keyCode == DOWN){
    paddle2.paddleSpeed = 6;
    };

  if(key == 'w' || key == 'W'){
  paddle1.paddleSpeed = -6;
  };
  if(key == 's' || key == 'S'){
  paddle1.paddleSpeed = 6;
  };
  
};

void keyReleased(){
  if (keyCode == UP){
    paddle2.paddleSpeed = 0;
    };
    if(keyCode == DOWN){
    paddle2.paddleSpeed = 0;
    };

  if(key == 'w' || key == 'W'){
  paddle1.paddleSpeed = 0;
  };
  if(key == 's' || key == 'S'){
  paddle1.paddleSpeed = 0;
  };
  
};
