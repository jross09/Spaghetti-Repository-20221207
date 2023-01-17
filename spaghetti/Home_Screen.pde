float backgroundX, backgroundY, backgroundWidth, backgroundHeight;
float oneImageX, oneImageY, oneImageWidth, oneImageHeight;
float quitX, quitY, quitWidth, quitHeight;
float quitX2, quitY2, quitWidth2, quitHeight2;
float startButtonX, startButtonY, startButtonWidth, startButtonHeight;
float  nextX, nextY, nextWidth, nextHeight;
float nextTwoX, nextTwoY, nextTwoWidth, nextTwoHeight;
float nextThreeX, nextThreeY, nextThreeWidth, nextThreeHeight;
float nextFourX, nextFourY, nextFourWidth, nextFourHeight;
float nextFiveX, nextFiveY, nextFiveWidth, nextFiveHeight;
float nextSixX, nextSixY, nextSixWidth, nextSixHeight;
float nextSevenX, nextSevenY, nextSevenWidth, nextSevenHeight;
float  nextLastX, nextLastY, nextLastWidth, nextLastHeight;
float lineX, lineY, lineEndX, lineEndY;
float line2X, line2Y, likeEndX2, lineEndY2, line3X, line3Y, likeEndX3, lineEndY3, line4X, line4Y, likeEndX4, lineEndY4;
float restartX, restartY, restartWidth, restartHeight;
float  restartButtonImageRectX, restartButtonImageRectY, restartButtonImageRectWidth, restartButtonImageRectHeight ;
float quitButtonImageRectX, quitButtonImageRectY, quitButtonImageRectWidth, quitButtonImageRectHeight;
float startButtonImageRectX, startButtonImageRectY, startButtonImageRectWidth, startButtonImageRectHeight;
int tintDayMode=255, tintDayModeOpacity=80, tintRed=64, tintGreen=64, tintBlue=0, tintNightModeOpacity=85;
color lightBlue=#50B9E8;
//
void homeScreen() { //exists in VOID DRAW
  println("arrived at home screen"); //Testing for Splash Screen Start Button working
  /* Home Screen Expectations
   - background image using tint
   - 9 evenly spaced recatngles
   - quit button and reset button (splash screen start button)
   - in each: image, text, 2d shape, button
   - narative through the 9 rectangles
   - see case study
   - note: must have one image with aspect ratio
   */
  //
  //quit button move to button subprogram
  if ( mouseX>=quitX && mouseX<=quitX+quitWidth && mouseY>=quitY && mouseY<=quitY+quitHeight ) { 
    /*
    fill(white);
     rect( quitX, quitY, quitWidth, quitHeight ); //testing only
     noFill();
     */
    quitButtonText(); //in aspect ratio
  } else {
    quitButtonImage();
  }
  rect( quitX, quitY, quitWidth, quitHeight ); //quit button
  //


  //
  if ( mouseX>=startButtonX && mouseX<=startButtonX+startButtonWidth && mouseY>=startButtonY && mouseY<=startButtonY+startButtonHeight ) { 
    /*
    fill(white);
     rect( quitX, quitY, quitWidth, quitHeight ); //testing only
     noFill();
     */
    startButtonText();//in aspect ratio
  } else {
    startButtonImage();
  }
  rect( startButtonX, startButtonY, startButtonWidth, startButtonHeight );
  //
  line(lineX, lineY, lineEndX, lineEndY);
  strokeWeight(2);
  stroke(lightBlue);
  //
  line(line2X, line2Y, likeEndX2, lineEndY2);
  //
  line(line3X, line3Y, likeEndX3, lineEndY3);
  //
  line(line4X, line4Y, likeEndX4, lineEndY4);
}//End homeScreen
//
void backgroundWhiteScreen() {
  fill(white);
  noStroke();
  rect(backgroundX, backgroundY, backgroundWidth, backgroundHeight); //white colour
  stroke(1); //reset: 1 pixel
  fill(white);//reset: white
}//End backgroundWhiteScreen
//

//
void backgroundImage() {
  backgroundWhiteScreen();
  //Control night mode, coloir, with IF
  //if (nightMode==true) tint(tintRed, tintGreen, tintBlue, tintNightModeOpacity);;
  //if (nightMode==false) tint(tintDayMode, tintDayModeOpacity);;
  if ( nightMode==true ) {
    tint(tintRed, tintGreen, tintBlue, tintNightModeOpacity);
  } else {
    tint(tintDayMode, tintDayModeOpacity);
  }
  //End Night Mode Control
  image(backgroundImage, backgroundX, backgroundY, backgroundWidth, backgroundHeight);
  //image with tint()
} //End backgroundImage
//
void nextButtonOne() {
  if ( mouseX>=nextX && mouseX<=nextX+nextWidth && mouseY>=nextY && mouseY<=nextY+nextHeight ) { 

    nextButtonText();
  } else {
    nextButtonImage();
  }
  rect( nextX, nextY, nextWidth, nextHeight );
} //quit button
  //End nextButtonOne
  //
void nextButtonTwo() {
  if ( mouseX>=nextTwoX && mouseX<=nextTwoX+nextTwoWidth && mouseY>=nextTwoY && mouseY<=nextTwoY+nextTwoHeight ) { 

    nextButtonTwoText();
  } else {
    nextButtonTwoImage();
  }
  rect( nextTwoX, nextTwoY, nextTwoWidth, nextTwoHeight ); //quit button
}
  //End nextButtonTwo
  //
  void nextButtonThree() {
  if ( mouseX>=nextThreeX && mouseX<=nextThreeX+nextThreeWidth && mouseY>=nextThreeY && mouseY<=nextThreeY+nextThreeHeight ) { 

    nextButtonThreeText();
  } else {
    nextButtonThreeImage();
  }
  rect( nextThreeX, nextThreeY, nextThreeWidth, nextThreeHeight ); //quit button
}
  //
  void nextButtonFour() {
  if ( mouseX>=nextFourX && mouseX<=nextFourX+nextFourWidth && mouseY>=nextFourY && mouseY<=nextFourY+nextFourHeight ) { 

    nextButtonThreeText();
  } else {
    nextButtonFourImage();
  }
  rect( nextFourX, nextFourY, nextFourWidth, nextFourHeight );
}
//
void nextButtonFive() {
  if ( mouseX>=nextFiveX && mouseX<=nextFiveX+nextFiveWidth && mouseY>=nextFiveY && mouseY<=nextFiveY+nextFiveHeight ) { 

    nextButtonThreeText();
  } else {
    nextButtonFiveImage();
  }
  rect( nextFiveX, nextFiveY, nextFiveWidth, nextFiveHeight );
}
//
void nextButtonSix() {
  if ( mouseX>=nextSixX && mouseX<=nextSixX+nextSixWidth && mouseY>=nextSixY && mouseY<=nextSixY+nextSixHeight ) { 

    nextButtonThreeText();
  } else {
    nextButtonSixImage();
  }
  rect( nextSixX, nextSixY, nextSixWidth, nextSixHeight );
}
//
void nextButtonSeven() {
  if ( pictureSix=true ) { 

    nextButtonThreeText();
  } else {
    nextButtonThreeImage();
  }
  rect( nextSevenX, nextSevenY, nextSevenWidth, nextSevenHeight );
}
//
void lastButton() {
  if ( mouseX>=nextLastX && mouseX<=nextLastX+nextLastWidth && mouseY>=nextLastY && mouseY<=nextLastY+nextLastHeight ) { 

    lastButtonText();
  } else {
    lastButtonImage();
  }
  rect( nextLastX, nextLastY, nextLastWidth, nextLastHeight );
}
  // End Home Screen Subprogram
