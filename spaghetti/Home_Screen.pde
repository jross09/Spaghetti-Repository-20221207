float backgroundX, backgroundY, backgroundWidth, backgroundHeight;
float oneImageX, oneImageY, oneImageWidth, oneImageHeight;
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
  tint(tintDayMode, tintDayModeOpacity);
  //tint(tintRed, tintGreen, tintBlue, tintNightModeOpacity);
  image(backgroundImage, backgroundX, backgroundY, backgroundWidth, backgroundHeight);
  //image with tint()
} //End backgroundImage
// End Home Screen Subprogram