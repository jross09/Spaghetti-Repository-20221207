//Global Variables
int appWidth, appHeight, largerDimension, smallerDimension;
Boolean OS_On=false;
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
} //End setup
//
void draw() {
  //Assignment #2: OS Level Mouse Click and Splash Screen
  if (OS_On==true) splashScreen(); //OS Level MOUSE Click
  //
} //End draw
//
void keyPressed() {
} //End keyPressed
//
void mousePressed() {
  //OS Level MouseClick
  if (OS_On==false) OS_On=true;//End OS Level MouseClick
} //End mousePressed
//
//End MAIN Program
