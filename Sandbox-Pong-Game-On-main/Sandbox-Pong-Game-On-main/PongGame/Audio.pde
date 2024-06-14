//Global Variables
Minim minim; //creates an object to access all functions
AudioPlayer[] songs = new AudioPlayer[1]; //creates "Play List" variable holding extensions WAV,AIFF,AU,SND,and MP3
AudioPlayer[] soundEffects = new AudioPlayer[1]; //creates "Play List" variable holding extensions WAV,AIFF,AU,SND,and MP3
String pathway, jDeci, zeAhSFX; //the songs/SFX
int currentSong = 0; //current song
//
void setupAudio() {
  minim = new Minim (this); //load from data directory
  pathway = "data/";
  zeAhSFX = "zaytoven-ahh.mp3";
  jDeci = "Jodeci - Freek'n You Instrumental.mp3";
  songs[0] = minim.loadFile(pathway + jDeci);//song
  soundEffects[0] = minim.loadFile( pathway + zeAhSFX ); //sound effect
  loopInf(-1);
}//end setupAudio
void concatenationOfMusicFiles() {
  
}//end concatenationOfMusicFiles()
void loopInf(int loopInf) {//loop inf
  songs[currentSong].pause();//substitute for delay() does not break the rest of code
  songs[currentSong].loop(loopInf);
}//end loopInf
void mute() { //mute button
  if ( songs[currentSong].isMuted() ) {//button works when song is not playing
    songs[currentSong].unmute();//switches off .mute()
  } else {//if song is not muted
    songs[currentSong].mute();//mutes song
  }//end mute button
}//end mute
void muteSFX() {
  for ( int i=0; i<soundEffects.length; i++ ) {
    if ( soundEffects[i].isMuted() ) {//button works when song is not playing
      soundEffects[i].unmute();//switches off .mute()
    } else {//if song is not muted
      soundEffects[i].mute();//mutes song
    }//end mute button
  }
}//end muteSFX
//end Audio subProgram 
