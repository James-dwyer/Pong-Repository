void starSetup() {

  while (redo == false) {
    for (int i = 0; i < Star.length; i++) {

      float diameter = random(Diameter/70, Diameter/15);
      float randX = random(leftGoal.lineX+diameter/2, rightGoal.lineX-diameter/2);
      float randY = random(0+diameter/2, Height-diameter/2);
      Star[i] = new ball(randX, randY, diameter);
      int j = i;
      while (j >= i) {
        if (randX+diameter/2 <= Star[i].ballX+Star[i].ballDiameter/2 && randX-diameter/2 > Star[i].ballX-Star[i].ballDiameter/2) {
          randX = random(0+diameter/2, Width-diameter/2);
          if (Star[i].ballX+Star[i].ballDiameter <= randX+diameter/2 && Star[i].ballX-Star[i].ballDiameter <= randX-diameter/2) {
            randX = random(0+diameter/2, Height-diameter/2);
          };
        };
        j--;
      };

      Star[i] = new ball(randX, randY, diameter);
      while (j >= i) {
        if (randY+diameter/2 <= Star[i].ballY+Star[i].ballDiameter/2 && randY-diameter/2 >= Star[i].ballY-Star[i].ballDiameter/2) {
          randY = random(0+diameter/2, Height-diameter/2);
          if (Star[i].ballY+Star[i].ballDiameter <= randY+diameter/2 && Star[i].ballY-Star[i].ballDiameter <= randY-diameter/2) {
            randY = random(0+diameter/2, Height-diameter/2);
          };
        }
        ;
        j--;
      };
      Star[i] = new ball(randX, randY, diameter);
    };
    redo = true;
  };
  for (int i=0; i<Star.length; i++) {
    for (int X = Star.length-1; X > i; X--) {
      if (Star[i].ballX+Star[i].ballDiameter/2 < Star[X].ballX+Star[X].ballDiameter/2 && Star[i].ballX-Star[i].ballDiameter/2 > Star[X].ballX-Star[X].ballDiameter/2)redo = false;
      if (Star[i].ballY-Star[i].ballDiameter/2 > Star[X].ballY-Star[X].ballDiameter/2 && Star[i].ballY+Star[i].ballDiameter/2 < Star[X].ballY+Star[X].ballDiameter/2)redo = false;
    };
  };
};
