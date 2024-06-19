//Global Variables
boolean portOn = true;
float refMeasure;
boolean nightMode = false;
color strokeColor = #d00909;
color background; //= #d00909;
color secondaryColor;// = #280137;
color hoverOver;// = #FF5733;
//
void setupPort() {
  refMeasure = width/50;
  Button quit = new Button(width-width/10, 0, width/10, height/14, 0); 
  Button menuToPong = new Button(width/2 - width/12, (refMeasure), width/6, height/20, 0);
  RectText title = new RectText(width/2-(width*4/10), height/10, width*4/5, height/5, secondaryColor);
  quit.variablesUpdate(quit.x, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);
  menuToPong.variablesUpdate(0, menuToPong.x, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);
  title.variablesUpdate(title.x, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);
  //
  shapes.add(quit); //Element 0, quit
  shapes.add(menuToPong); //Element 1, menuToPong
  shapes.add(title);//Element 2, title
}//end setupPong
void drawPort() {
  nightMode();
  if (portOn) drawPortOn();
  for ( Shape s : shapes ) {
    s.drawing();
  }
}//end drawPong
void mousePressedPort() {
  for ( Shape s : shapes ) {
    s.mousePressed();
  }
}//end mousePressedPong
void keyPressedPort() {
  if (key == '4') portSwitch();//switches pong on and off
}//end keyPressedPong
//
void drawPortOn() {
  background(background);
  for ( Shape s : shapes ) {
    s.reset();
  }
}//end drawPong
void mousePressedPortOn() {}//end mousePressedPong
void keyPressedPortOn() {}//end keyPressedPong
void portSwitch() {
  if (portOn) { 
    portOn = false; 
    pongOn = false;
    modeOn = true;
  } else { 
    portOn = true;
    pongOn = false;
    modeOn = false;
  }
}//end pongOnOffSwitch
void nightMode() {
  //if (!nightMode){ nightMode = true; } else { nightMode = false; }//turing on and off
  if (nightMode){
    tint(64, 64, 40); //RGB: Night Mode
    strokeColor = #FFFDD0;
    secondaryColor = #FFC919 ;//The Button color 280137
    background = #3B3B3B; //The background color d00909
    hoverOver = #9B9B9B; //hover over color FF0000 FF5733
  } else {
    tint(255, 128); //Gray Scale, day use: used 1/2 tint for white (128/255=1/2)
    strokeColor = #FFFBE3;
    secondaryColor = #280137;//The Button color 280137
    background = #d00909; //The background color d00909
    hoverOver = #FF5733; //hover over color FF0000 FF5733
  }
}//end nightMode()
//end Port subProgram
