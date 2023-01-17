import ddf.minim.*;
import ddf.minim.analysis.*;
import ddf.minim.effects.*;
import ddf.minim.signals.*;
import ddf.minim.spi.*;
import ddf.minim.ugens.*;

//Global Variables
int appWidth, appHeight, largerDimension, smallerDimension;
Boolean OS_On=false, splashScreenStart=false, pictureOne=false, pictureTwo=false, pictureThree= false, pictureFour=false, pictureFive=false, pictureSix=false, pictureSeven=false, pictureEight=false;
Boolean nightMode=false; //bonus1: populate with system clock
//more bonus, gr 11: use API-sunrise for system clock start, API-sunset for system clock stop
color resetDefaultInk=#FFFFFF, white=#FFFFFF, pink=#F50CA8;
/* Night Mode Comment
 Purple not for Night Mode, full BLUE
 resetDefaultInk is Night Mode friendly
 */
Minim minim; //creates object to access all funtions
AudioPlayer song1; //cretes a "Play List" variable, WAV, AIFF, AU, SND, MP3
//
void setup() {
  size(1500, 1000);
  //fullScreen(); //displayWidth, displayHeight
  appWidth = width;
  appHeight = height;
  //Display Algorithm from Hello World
  display(); //Purpose: CANVAS fits in monitor & dimension size is known
  //smaller & larger dimension from Display Algorithm
  println("Smaller Dimension is", smallerDimension, "Larger Dimension is", largerDimension);
  population(); //Values based on DISPLAY
  textSetup();
  imageSetup();
  //
  minim = new Minim(this);
  song1 = minim.loadFile("../Audio Used/Start_Your_Engines.mp3");
}//End setup
//
void draw() {
  //Assignemnt #2: OS Level Mouse CLick and Splash Screen
  if ( OS_On==true && splashScreenStart==false ) splashScreen(); //OS Level MOUSE Click
  if ( splashScreenStart==true ) homeScreen();
  //
 
}//End draw
//
void keyPressed() {
  //Splash Screen SPACE Bar
  if ( OS_On==true && key==' ' ) {
    splashScreenStart = true;
    backgroundImage();
  }//End Splash Screen SPACE Bar
  //
  //Key Board Short Cuts
  if (key== CODED || key==ESC) exit();
  if (key=='Q' || key=='q') exit();
  if (key=='N' || key=='n') {
    if (nightMode==false) {
      nightMode = true;
      backgroundImage();
      //must redraw all recatngles too
  } else {
    nightMode = false;
    backgroundImage();
  }
  }

//
  //PLAY PAUSE Feature
  if ( key== 'T' || key== 't' ) {
    if ( song1.isPlaying() ) {
      song1.pause();
    } else  if ( song1.position() >= song1.length()-song1.length()*1/5 ) {
    } else {
      song1.play();
    
    }//
  } //End keyPressed
}//
void mousePressed() {
  //OS Level MouseClick
  if ( OS_On==false ) OS_On=true;//End OS Level MouseClick
  if ( mouseX>=quitX && mouseX<=quitX+quitWidth && mouseY>=quitY && mouseY<=quitY+quitHeight ) exit();
  if ( mouseX>=startButtonX && mouseX<=startButtonX+startButtonWidth && mouseY>=startButtonY && mouseY<=startButtonY+startButtonHeight ) pictureOne();
  if (pictureOne=true) song1.play();
  if (pictureOne=true) nextButtonOne();
  if (mouseX>=nextX && mouseX<=nextX+nextWidth && mouseY>=nextY && mouseY<=nextY+nextHeight) pictureTwo();
  if (pictureTwo=true) nextButtonTwo();
  if (mouseX>=nextTwoX && mouseX<=nextTwoX+nextTwoWidth && mouseY>=nextTwoY && mouseY<=nextTwoY+nextTwoHeight) pictureThree();
  if (pictureThree=true) nextButtonThree();
  if (mouseX>=nextThreeX && mouseX<=nextThreeX+nextThreeWidth && mouseY>=nextThreeY && mouseY<=nextThreeY+nextThreeHeight) pictureFour();
  if (pictureFour=true) nextButtonFour();
  if (mouseX>=nextFourX && mouseX<=nextFourX+nextFourWidth && mouseY>=nextFourY && mouseY<=nextFourY+nextFourHeight) pictureFive();
  if (pictureFive=true) nextButtonFive();
  if (mouseX>=nextFiveX && mouseX<=nextFiveX+nextFiveWidth && mouseY>=nextFiveY && mouseY<=nextFiveY+nextFiveHeight ) pictureSix();
  if (pictureSix=true) nextButtonSix();
  if (mouseX>=nextSixX && mouseX<=nextSixX+nextSixWidth && mouseY>=nextSixY && mouseY<=nextSixY+nextSixHeight) pictureSeven();
  if (pictureSeven=true) nextButtonSeven();
  if (mouseX>=nextSevenX && mouseX<=nextSevenX+nextSevenWidth && mouseY>=nextSevenY && mouseY<=nextSevenY+nextSevenHeight) pictureEight();
  if (pictureEight=true) lastButton();
  if ( mouseX>=nextLastX && mouseX<=nextLastX+nextLastWidth && mouseY>=nextLastY && mouseY<=nextLastY+nextLastHeight ) exit();
  //
}//End mousePressed
//
//End MAIN Program
