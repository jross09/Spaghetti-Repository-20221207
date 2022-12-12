//Global Variables
int appWidth, appHeight, largerDimension, smallerDimension;
Boolean OS_On=false, splashScreenStart = false;
color resetDefaultInk=#000000, white=#FFFFFF, pink=#FF038E; 
/*night mode comment
pink not for night mode, lots of blue
resetDefaultInk is night mode friendly
*/
//
void setup() {
  size(1200, 1000); //landscape
  //fullScreen(); //displayWidth, displayHeight
  //Display Algorithm from Hello World
  appWidth = width;
  appHeight = height;
  display();// purpose: canvas fits in monitor and dimension size is known
  //smaller and larger dimension are in display orientation
  population();//values based on display
  textSetup();
  imageSetup();
} //End setup
//
void draw() {
  //Assignment #2: OS Level Mouse Click and Splash Screen
  if (OS_On==true && splashScreenStart==false ) splashScreen(); //OS Level MOUSE Click
  if (splashScreenStart == true) homeScreen();
  //
} //End draw
//
void keyPressed() {
  //Splash Screen SPACE Bar
  if ( OS_On==false && key==' ' ){
    splashScreenStart = true;
    backgroundImage();
  }//End Splash Screen SPACE Bar
} //End keyPressed
//
void mousePressed() {
  //OS Level MouseClick
  if (OS_On==false) OS_On=true;//End OS Level MouseClick
} //End mousePressed
//
//End MAIN Program
