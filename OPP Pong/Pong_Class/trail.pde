class Trail {
float x,y,diameter;
float hyp;
color c;
  
  Trail(float Width, float Height){
  x = Width;
  y = Height;
  diameter = width/75;
  c = Ball[0].ballColor;
  };
  
  void draw(){
  fill(c);
  ellipse(x,y,diameter,diameter);
  move();
  };
  
  
  void move(){
    if(Ball[0].ballX > x){
       hyp = (Ball[0].ballY-y)/(Ball[0].ballX-x);
    }else hyp = (y-Ball[0].ballY)/(x - Ball[0].ballX);
 
  if(x < Ball[0].ballX && y < Ball[0].ballY){
  x += hyp;
  y += hyp;
  };
  if(x > Ball[0].ballX && y > Ball[0].ballY){
  x -= hyp;
  y -= hyp;
  };
  if(x < Ball[0].ballX && y > Ball[0].ballY){
  x -= hyp;
  y += hyp;
  };  
  if(x > Ball[0].ballX && y <  Ball[0].ballY){
  x += hyp;
  y -= hyp;
  };
  //if(x == mouseX && y > mouseY){
  //y++;
  //};
  //if(x == mouseX && y < mouseY){
  //y--;
  //};
  //if(y == mouseY && y > mouseX){
  //x++;
  //};
  //if(y == mouseY && y < mouseX){
  //x--;
  //};
  };
};
