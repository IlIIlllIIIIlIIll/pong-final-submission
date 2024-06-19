//Global Variables
boolean modeOn = false;
boolean dmPractice = false;//drop down menu for ai
boolean mPractice = false, ePractice = false, infinite   = false;//hard ai, medium ai, easy ai
//
void setupMode() {
  Button soloMode = new Button(referenceMes, height/10, width/6, height/8, 0);
  Button duoMode = new Button(soloMode.x+width/6+referenceMes/2, soloMode.y, width/5, height/8, 0);
  Button Deathwish = new Button(soloMode.x, soloMode.y+soloMode.h+(referenceMes/2), width/5, height/14, 0);
  Button mPractice = new Button(soloMode.x, Deathwish.y+Deathwish.h+(referenceMes/2), width/5, height/14, 0);
  Button ePractice = new Button(soloMode.x, mPractice.y+mPractice.h+(referenceMes/2), width/5, height/14, 0);
  Button infinite   = new Button(duoMode.x+width/6+referenceMes/2, duoMode.y, width/5, height/8, 0);
  RectText musicSettings = new RectText(width-referenceMes-width/6, height/10, width/6, height/8, secondaryColor);
  Button muteSong = new Button(width-width/6-referenceMes, duoMode.y, width/6, height/14, 0);
  Button muteSFX = new Button(musicSettings.x, muteSong.y+muteSong.h+(referenceMes/2), width/6, height/14, 0);
  Button nightMode = new Button(infinite  .x+infinite  .w+referenceMes/2, infinite  .y, width/6, height/8, 0);
  duoMode.variablesUpdate(0, 0, 0, 0, duoMode.x, 0, 0, 0, 0, 0, 0, 0, 0, 0);
  soloMode.variablesUpdate(0, 0, 0, 0, 0, soloMode.x, 0, 0, 0, 0, 0, 0, 0, 0);
  Deathwish.variablesUpdate(0, 0, 0, 0, 0, 0, Deathwish.x, 0, 0, 0, 0, 0, 0, 0);
  mPractice.variablesUpdate(0, 0, 0, 0, 0, 0, 0, mPractice.x, 0, 0, 0, 0, 0, 0);
  ePractice.variablesUpdate(0, 0, 0, 0, 0, 0, 0, 0, ePractice.x, 0, 0, 0, 0, 0);
  infinite  .variablesUpdate(0, 0, 0, 0, 0, 0, 0, 0, 0, infinite  .x, 0, 0, 0, 0);
  muteSong.variablesUpdate(0, 0, 0, 0, 0, 0, 0, 0, 0, 0, muteSong.x, 0, 0, 0);
  muteSFX.variablesUpdate(0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, muteSFX.x, 0, 0);
  nightMode.variablesUpdate(0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, nightMode.x, 0);
  //
  shapes.add(soloMode);//Element 3, soloMode
  shapes.add(duoMode);//Element 4, duoMode
  shapes.add(Deathwish);//Element 5, hard ai
  shapes.add(mPractice);//Element 6, medium ai
  shapes.add(ePractice);//Element 7, easy ai
  shapes.add(infinite  );//Element 8, infinite  
  shapes.add(muteSong);//Element 9, muteSong
  shapes.add(muteSFX);//Element 10, muteSFX
  shapes.add(nightMode);//Element 11, nightMode
  shapes.add(musicSettings);//Element 12, musicSettings
}//end setupPong
void drawMode() {
  if (modeOn) drawModeOn();
}//end drawPong
void mousePressedMode() {
}//end mousePressedPong
void keyPressedMode() {
}//end keyPressedPong
//
void drawModeOn() {
  background(background);
}//end drawPong
void mousePressedModeOn() {
}//end mousePressedPong
void keyPressedModeOn() {
}//end keyPressedPong
void modeSwitch() {
  portOn = false;
  modeOn = false;
  pongOn = true;
}//end modeSwitch
//end Mode subProgram
