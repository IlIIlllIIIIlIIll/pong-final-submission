class Button extends Rectangle {
  //Global Variables
  //
  Button(float x, float y, float w, float h, color c) {
    super(x, y, w, h, c);
  }//end Button
  //Methods
  void drawing() {
    noStroke();
    globalUI();
    if (modeOn) modeUI();
    if (pongOn) pongUI();
    fill(colorReset);
  }//end Drawing
  void mousePressed() {
    globalMousePressed();
    if (modeOn) modeMousePressed();
    if (pongOn) pongMousePressed();
  }//end mousePressed
  void keyPressed() {}//end keyPressed
  void keyReleased()  {}//end keyReleased
  void reset() {
    resetScore();
    soloMode = false;
    mPractice = false;
    ePractice = false;
    infinite   = false;
  }//end reset
  float quitX, menuToPongX, pauseX, resetScoreY, duoModeX, soloModeX, DeathwishX, mPracticeX, ePracticeX, infiniteX, muteSongX, muteSFXX, nightModeX;
  void variablesUpdate(float v0, float v1, float v2, float v3, float v4, float v5, float v6, float v7, float v8, float v9, float v10, float v11, float v12, float v13) {
    quitX = v0;
    menuToPongX = v1;
    pauseX = v2;
    resetScoreY = v3;
    duoModeX = v4;
    soloModeX= v5;
    DeathwishX = v6;
    mPracticeX = v7;
    ePracticeX = v8;
    infiniteX = v9;
    muteSongX = v10;
    muteSFXX = v11;
    nightModeX = v12;
  }//end variablesUpdate
  void globalMousePressed() {
    if (x == quitX) mousePressedExitFunction();
    if (x == menuToPongX) mousePressedMenuToPongFunction();
  }//end globalMousePressed
  void modeMousePressed() {
    if (x == duoModeX) mousePressedduoModeFunction();
    if (x == soloModeX) mousePressedsoloModeFunction();
    if (x == infiniteX) mousePressedinfiniteFunction();
    if (x == muteSongX) mousePressedMuteSongFunction();
    if (x == muteSFXX) mousePressedMuteSFXFunction();
    if (x == nightModeX) mousePressedNightModeFunction();
    if (dmPractice) {
      if (x == DeathwishX) mousePressedDeathwishFunction();
      if (x == mPracticeX) mousePressedmPracticeFunction();
      if (x == ePracticeX) mousePressedePracticeFunction();
    }
  }//end modeMousePressed
  void pongMousePressed() {
    if (x == pauseX) mousePressedPauseGameFunction();
    if (y == resetScoreY) mousePressedResetScoreFunction();
  }//end pongMousePressed
  void globalUI() {
    if (x == quitX) {
      color quitOn = #ff1919;
      color quitOff = #00b530;
      drawing(quitOn, quitOff);
      rectText("Quit");
    }
    if (x == menuToPongX) {
      drawing(hoverOver, secondaryColor);
      rectSwitchingText("Pong", "Menu", portOn);
    }
  }//end globalUI
  void modeUI() {
    if (x == duoModeX) {
      drawing(hoverOver, secondaryColor);
      rectText("Duo");
    }
    if (x == soloModeX) {
      drawing(hoverOver, secondaryColor);
      rectText("Solo");
    }
    if (x == infiniteX) {
      drawing(hoverOver, secondaryColor);
      rectText("infinite  Mode");
    }
    if (x == muteSongX) {
      drawing(hoverOver, secondaryColor);
      rectSwitchingText("PlaySong", "MuteSong", songs[currentSong].isMuted());
    }
    if (x == muteSFXX) {
      drawing(hoverOver, secondaryColor);
      //for ( int i=0; i<soundEffects.length; i++ ) {//technically neccesary for mute but makes the text bold when uncommented cause its playing more then once, 
      rectSwitchingText(" PlaySFX ", " MuteSFX ", soundEffects[0].isMuted());//same functionality but not bold text, can be any sfx
      //}
    }
    if (x == nightModeX) {
      drawing(hoverOver, secondaryColor);
      rectSwitchingText("Day Mode", "Night Mode", nightMode);
    }
    if (dmPractice) {
      if (x == DeathwishX) {
        drawing(hoverOver, secondaryColor);
        rectText("Deathwish");
      }
      if (x == mPracticeX) {
        drawing(hoverOver, secondaryColor);
        rectText("Medium Practice");
      }
      if (x == ePracticeX) {
        drawing(hoverOver, secondaryColor);
        rectText("Easy Practice");
      }
    }
  }//end modeUI
  void pongUI() {
    if (x == pauseX) {
      drawing(hoverOver, secondaryColor);
      rectSwitchingText("PAUSE", "PLAY", pongGameOn);
    }
    if (y == resetScoreY && x != quitX) {
      drawing(hoverOver, secondaryColor);
      rectText("Reset");
    }
  }//end pongUI
  void drawing(color hoverOver, color buttonColor) {
    if ( mouseX>=x && mouseX<=x+w && mouseY>=y && mouseY<=y+h )
    {fill(hoverOver);} else {fill(buttonColor);}
    rect(x, y, w, h);
  }//end drawing
  void mousePressedExitFunction() {
    if ( mouseX>=x && mouseX<=x+w && mouseY>= y && mouseY<=y+h )
    exit();
  }//end mousePressedExitFunction
  void mousePressedMenuToPongFunction() {
    if ( mouseX>=x && mouseX<=x+w && mouseY>= y && mouseY<=y+h )
    portSwitch();
  }//end mousePressedMenuToPongFunction
  void mousePressedPauseGameFunction() {
    if ( mouseX>=x && mouseX<=x+w && mouseY>= y && mouseY<=y+h )
    pongOnOffSwitch();
  }//end mousePressedPauseGameFunction
  void mousePressedResetScoreFunction() {
    if ( mouseX>=x && mouseX<=x+w && mouseY>= y && mouseY<=y+h )
    resetScore();
  }//end mousePressedResetScoreFunction
  void resetScore() {
    scoreRight = 0;
    scoreLeft = 0;
  }//end resetScore
  void mousePressedduoModeFunction() {
    if ( mouseX>=x && mouseX<=x+w && mouseY>= y && mouseY<=y+h )
    modeSwitch();
  }//end mousePressedduoModeFunction
  void mousePressedsoloModeFunction() {
    if ( mouseX>=x && mouseX<=x+w && mouseY>= y && mouseY<=y+h ) {
      pongAiDropMenu();
    }
  }//end mousePressedsoloModeFunction
  void mousePressedDeathwishFunction() {
    if ( mouseX>=x && mouseX<=x+w && mouseY>= y && mouseY<=y+h ) {
      soloMode = true;
      modeSwitch();
    }
  }//end mousePressedDeathwishFunction
  void mousePressedmPracticeFunction() {
    if ( mouseX>=x && mouseX<=x+w && mouseY>= y && mouseY<=y+h ) {
      soloMode = true;
      mPractice = true;
      modeSwitch();
    }
  }//end mousePressedmPracticeFunction
  void mousePressedePracticeFunction() {
    if ( mouseX>=x && mouseX<=x+w && mouseY>= y && mouseY<=y+h ) {
      soloMode = true;
      ePractice = true;
      modeSwitch();
    }
  }//end mousePressedePracticeFunction
  void mousePressedinfiniteFunction() {
    if ( mouseX>=x && mouseX<=x+w && mouseY>= y && mouseY<=y+h ) {
      infinite   = true;
      modeSwitch();
    }
  }//end mousePressedinfinite  Function
  void mousePressedMuteSongFunction() {
    if ( mouseX>=x && mouseX<=x+w && mouseY>= y && mouseY<=y+h ) mute();
  }//end mousePressedMuteSongFunction
  void mousePressedMuteSFXFunction() {
    if ( mouseX>=x && mouseX<=x+w && mouseY>= y && mouseY<=y+h ) muteSFX();
  }//end mousePressedMuteSFXFunction
  void mousePressedNightModeFunction() {
    if ( mouseX>=x && mouseX<=x+w && mouseY>= y && mouseY<=y+h ) nightMode();
  }//end mousePressedNightModeFunction
  void rectText (String firstText) {
    drawText( height, ink, CENTER, CENTER, Font, textSpace+firstText+textSpace, x, y, w, h);
  }//end rectText
  void rectSwitchingText(String firstText, String secondText, boolean boole) {
    if (boole) {
      drawText( height, ink, CENTER, CENTER, Font, textSpace+firstText+textSpace, x, y, w, h);
    } else {
      drawText( height, ink, CENTER, CENTER, Font, textSpace+secondText+textSpace, x, y, w, h);
    }
  }//end rectSwitchingText
  //
  void pongAiDropMenu() {
    if (dmPractice) {
      dmPractice = false;
    } else {
      dmPractice = true;
    }
  }//end dropMenu
  void nightMode() {
    if (nightMode) {
      nightMode = false;
    } else {
      nightMode = true;
    }
  }//end nightMode
  color backgroundColor() {
    color nightMode = 0;
    return nightMode;
  }//end backgroundColor
}//end Button
//end Button subProgram
