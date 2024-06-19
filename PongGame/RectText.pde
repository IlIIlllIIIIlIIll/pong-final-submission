class RectText extends Rectangle {
  //Global Variables
  int startTime;//for countdown code
  //
  RectText(float x, float y, float w, float h, color c) {
    super(x, y, w, h, c);
  }
  //Methods
  void drawing() {
    draw();
  }//end drawing
  void draw() {
    this.c = secondaryColor;
    fill(c);
    if (portOn) portDesign();
    if (pongOn) pongDesign();
    fill(colorReset);
  }//end draw
  void portDesign() {
    if (x == titleX) {
      rect(x, y, w, h);
      rectText("R n P(ong)");
    }
  }//end portDesign

  void pongDesign() {
    if (x == pauseTextX && !pongGameOn) {
      rect(x, y, w, h);
      rectText("Recess");
    }
  }//end pongDesign
  void keyPressed() {
  }//end keyPressed
  void keyReleased() {
  }//end keyReleased
  void mousePressed() {
  }//end mousePressed
  void reset() {
  }//end reset
  float titleX, countDownX, pauseTextX, musicSettingsX;
  void variablesUpdate(float v0, float v1, float v2, float v3, float v4, float v5, float v6, float v7, float v8, float v9, float v10, float v11, float v12, float v13) {
    titleX = v0;
    countDownX = v1;
    pauseTextX = v2;
    musicSettingsX = v3;
  }//end variablesUpdate
  void rectText(String firstText) {
    drawText( height, ink, CENTER, CENTER, Font, textSpace+firstText+textSpace, x, y, w, h);
  }//end rectText
  color backgroundColor() {
    color nightMode = 0;
    return nightMode;
  }//end Night Mode Color Selector
}//end RectText
//end RectText subProgram
