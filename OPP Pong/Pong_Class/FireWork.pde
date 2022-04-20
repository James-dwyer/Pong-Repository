class fireWorks {
 float fireX,fireY,fireDiameter;
 color Color;
 float xSpeed,ySpeed,gravity;
 
 fireWorks(float Width,float Height){
 fireX = Width;
 fireY = Height;
 fireDiameter = random(width/15);
 Color = int(random(255));
 
 xSpeed = random(-6,6);
 ySpeed = random(-6,6);
 gravity = 0.5;
 
 };

void draw(){
 fill(Color);
 ellipse(fireX,fireY,fireDiameter,fireDiameter);
 
 fall();
};

void fall(){
fireX += xSpeed;
fireY += ySpeed;

ySpeed += gravity;
};

};
