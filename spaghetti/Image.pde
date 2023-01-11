PImage backgroundImage, quitButtonImage;
PImage restartImage, restartButtonImage;
PImage startImage, startButtonImage;
PImage imageOne, nextButtonImage;
PImage imageTwo, pictureTwoImage;
PImage imageThree, pictureThreeImage;
PImage imageFour, pictureFourImage;
PImage nextButtonTwoImage;
PImage nextButtonThreeImage;
float oneX, oneY, oneWidth, oneHeight;
float twoX, twoY, twoWidth, twoHeight;
float threeX, threeY, threeWidth, threeHeight;
float fourX, fourY, fourWidth, fourHeight;
//
void imageSetup() { 
  backgroundImage=loadImage("../Images Used/lover_house.jpg");
  quitButtonImage = loadImage("../Images Used/olaf.jpg");
  startButtonImage = loadImage("../Images Used/unicorn.jpg");
  nextButtonImage = loadImage ("../Images Used/ redsquare.png");
  //quitButtonImage is loaed here if different
}
//End imageSetup
//
void quitButtonImage() {
  quitButtonImage = loadImage("../Images Used/olaf.jpg");
  //rectangles largest dimension

  //images other dimension is scaled
  //
  //Image Dimensions
  float quitButtonImageWidth=1200, quitButtonImageHeight=1200;
  rect( quitButtonImageRectX, quitButtonImageRectY, quitButtonImageRectWidth, quitButtonImageRectHeight );
  //following vars must be populated or debugger error
  float quitButtonImageWidth_Adjusted=0.0, quitButtonImageHeight_Adjusted=0.0;
  float quitButtonImageWidth_Calculated=0.0, quitButtonImageHeight_Calculated=0.0;
  float largerDimension=0.0, smallerDimension=0.0;
  float imageWidthRatio=0.0, imageHeightRatio=0.0;
  //
  if (quitButtonImageWidth >= quitButtonImageHeight) {//Images largest dimennsion, landscape or square
    largerDimension = quitButtonImageWidth;
    smallerDimension = quitButtonImageHeight;
    //
    //images matching dimension to rectangles matching dimension
    quitButtonImageWidth_Adjusted = quitButtonImageRectWidth;
    imageHeightRatio = smallerDimension / largerDimension;// value<1, main point of all
    quitButtonImageHeight_Calculated= imageHeightRatio * quitButtonImageRectWidth;
    //
    //Debugging: x-value must be centered
    float centerX=appWidth*1/2;
    quitButtonImageRectX = centerX - quitButtonImageWidth_Adjusted * 1/2;
    image(quitButtonImage, quitButtonImageRectX, quitButtonImageRectY, quitButtonImageWidth_Adjusted, quitButtonImageHeight_Calculated);
    //
  } else {//portrait
    largerDimension = quitButtonImageHeight;
    smallerDimension = quitButtonImageWidth;
    //
    //images matching dimension to rectangles matching dimension
    quitButtonImageHeight_Adjusted = quitButtonImageRectHeight;
    imageWidthRatio = smallerDimension / largerDimension;// value<1, main point of all
    quitButtonImageWidth_Calculated= imageWidthRatio * quitButtonImageRectHeight;
    //
    //Debugging: x-value must be centered
    float centerX=appWidth*1/2;
    quitButtonImageRectX = centerX - quitButtonImageWidth_Adjusted * 1/2;
    //rect(); //screen to hoverover
    image(quitButtonImage, quitButtonImageRectX, quitButtonImageRectY, quitButtonImageWidth_Adjusted, quitButtonImageHeight_Calculated);
    //
    image(quitButtonImage, quitButtonImageRectX, quitButtonImageRectY, quitButtonImageWidth_Adjusted, quitButtonImageHeight_Calculated);
  }
  //
}//End quitButtonImage
//
void startButtonImage() {
  float startButtonImageWidth=615, startButtonImageHeight=615;
  rect( startButtonImageRectX, startButtonImageRectY, startButtonImageRectWidth, startButtonImageRectHeight );
  //following vars must be populated or debugger error
  float startButtonImageWidth_Adjusted=0.0, startButtonImageHeight_Adjusted=0.0;
  float startButtonImageWidth_Calculated=0.0, startButtonImageHeight_Calculated=0.0;
  float largerDimension=0.0, smallerDimension=0.0;
  float imageWidthRatio=0.0, imageHeightRatio=0.0;
  //
  if (startButtonImageWidth >= startButtonImageHeight) {//Images largest dimennsion, landscape or square
    largerDimension = startButtonImageWidth;
    smallerDimension = startButtonImageHeight;
    //
    //images matching dimension to rectangles matching dimension
    startButtonImageWidth_Adjusted = startButtonImageRectWidth;
    imageHeightRatio = smallerDimension / largerDimension;// value<1, main point of all
    startButtonImageHeight_Calculated= imageHeightRatio * startButtonImageRectWidth;
    //
    //Debugging: x-value must be centered
    float centerX=appWidth*1/2;
    startButtonImageRectX = centerX - startButtonImageWidth_Adjusted * 1/2;
    image(startButtonImage, startButtonImageRectX, startButtonImageRectY, startButtonImageWidth_Adjusted, startButtonImageHeight_Calculated);
    //
  } else {//portrait
    largerDimension = startButtonImageHeight;
    smallerDimension = startButtonImageWidth;
    //
    //images matching dimension to rectangles matching dimension
    startButtonImageHeight_Adjusted = startButtonImageRectHeight;
    imageWidthRatio = smallerDimension / largerDimension;// value<1, main point of all
    startButtonImageWidth_Calculated= imageWidthRatio * startButtonImageRectHeight;
    //
    //Debugging: x-value must be centered
    float centerX=appWidth*1/2;
    startButtonImageRectX = centerX - startButtonImageWidth_Adjusted * 1/2;
    //rect(); //screen to hoverover
    image(startButtonImage, startButtonImageRectX, startButtonImageRectY, startButtonImageWidth_Adjusted, startButtonImageHeight_Calculated);
    //
    image(startButtonImage, startButtonImageRectX, startButtonImageRectY, startButtonImageWidth_Adjusted, startButtonImageHeight_Calculated);
  }
}//End restartButtonImage
//
void pictureOne() {
  imageOne = loadImage ("../Images Used/all_too_well.jpg");
  rect (oneX, oneY, oneWidth, oneHeight);
  image (imageOne, oneX, oneY, oneWidth, oneHeight);
} //End pictureOne
//
void nextButtonImage() {
  nextButtonImage = loadImage ("../Images Used/red-square.png");
  rect (nextX, nextY, nextWidth, nextHeight);
  image (nextButtonImage, nextX, nextY, nextWidth, nextHeight);
}//End nextButtonImage
//
void pictureTwo() {
  imageTwo = loadImage ("../Images Used/delicate.jpg");
  rect (twoX, twoY, twoWidth, twoHeight);
  image (imageTwo, twoX, twoY, twoWidth, twoHeight);
} //End pictureTwo
//
void nextButtonTwoImage() {
  nextButtonTwoImage = loadImage ("../Images Used/red-square.png");
  rect (nextTwoX, nextTwoY, nextTwoWidth, nextTwoHeight);
  image (nextButtonTwoImage, nextTwoX, nextTwoY, nextTwoWidth, nextTwoHeight);
} //End nextButtonTwoImage()
//
void pictureThree() {
  imageThree = loadImage ("../Images Used/i_bet_you_think_about_me.png");
  rect (threeX, threeY, threeWidth, threeHeight);
  image (imageThree, threeX, threeY, threeWidth, threeHeight);
} //End pictureThree
//
void nextButtonThreeImage() {
  nextButtonThreeImage = loadImage ("../Images Used/red-square.png");
  rect (nextThreeX, nextThreeY, nextThreeWidth, nextThreeHeight);
  image (nextButtonThreeImage, nextThreeX, nextThreeY, nextThreeWidth, nextThreeHeight);
} //End nextButtonTwoImage()
//
void pictureFour() {
  imageFour = loadImage ("../Images Used/the_man.jpg");
  rect (fourX, fourY, fourWidth, fourHeight);
  image (imageFour, fourX, fourY, fourWidth, fourHeight);
} //End pictureThree
//End Image Subprogram
