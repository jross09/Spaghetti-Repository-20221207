float backgroundX, backgroundY, backgroundWidth, backgroundHeight;
float oneImageX, oneImageY, oneImageWidth, oneImageHeight;
float quitX, quitY, quitWidth, quitHeight;
float firstRectX, firstRectY, firstRectWidth, firstRectHeight;
float quitButtonImageRectX, quitButtonImageRectY, quitButtonImageRectWidth, quitButtonImageRectHeight;
int tintDayMode=255, tintDayModeOpacity=50;
//blue might change, starts at zero
int tintRed=64, tintGreen=64, tintBlue=0, tintNightModeOpacity=85;
//
void homeScreen() { //exists in VOID DRAW
  println("arrived at home screen"); //Testing for Splash Screen Start Button working
  /* Home Screen Expectations
   - background image using tint
   - 9 evenly spaced recatngles
   - quit button and reset button (splash screen start button)
   - in each: image, text, 2d shap, button
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
    quitButtonImage(); //in aspect ratio
  } else {
    quitButtonText();
  }
  rect( quitX, quitY, quitWidth, quitHeight ); //quit button
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
  
}//End Boxes Subprogram
// End Home Screen Subprogram
