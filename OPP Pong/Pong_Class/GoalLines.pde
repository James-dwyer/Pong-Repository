class line {
  float lineX, lineY, line1X, line1Y;

  line(float X, float Y, float X1, float Y1) {
    lineX = X;
    lineY = Y;
    line1X = X1;
    line1Y = Y1;
  }


  void draw() {
    if(darkMode == false){ stroke(black);} else stroke(grey);
    line(lineX, lineY, line1X, line1Y);
  };
};
