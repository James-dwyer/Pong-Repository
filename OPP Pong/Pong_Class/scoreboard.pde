class Scoreboard {
  float sbX, sbY, sbWidth, sbHeight;
  float winX, winY, winWidth, winHeight;
  int score, score2;
  PFont scoreFont;
  Scoreboard(float X, float Y, float Width, float Height, int Score) {

    sbY = Y;
    sbWidth = Width;
    sbHeight = Height;
    sbX = X-sbWidth/2;




    scoreFont = createFont("arial", 60);

    textFont(scoreFont);

    textAlign (CENTER, CENTER);
    score = Score;
    //score2 = "0";
  };

  void draw() {

    if (darkMode == false) { 
      fill(black);
    } else fill(grey);
    text(str(score), sbX, sbY, sbWidth, sbHeight);
  };
};
