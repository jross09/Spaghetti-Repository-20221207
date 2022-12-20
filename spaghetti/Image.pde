PImage backgroundImage, quitButtonImage;
PImage restartImage, restartButtonImage;
//
void imageSetup() { //image population
  backgroundImage=loadImage("../Images Used/lover_house.jpg");
  quitButtonImage = loadImage("../Images Used/olaf.jpg");
  restartButtonImage = loadImage("../Images Used/unicorn.jpg");
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
 void restartButtonImage() {
  float restartButtonImageWidth=615, restartButtonImageHeight=615;
  rect( restartButtonImageRectX, restartButtonImageRectY, restartButtonImageRectWidth, restartButtonImageRectHeight );
  //following vars must be populated or debugger error
  float restartButtonImageWidth_Adjusted=0.0, restartButtonImageHeight_Adjusted=0.0;
  float restartButtonImageWidth_Calculated=0.0, restartButtonImageHeight_Calculated=0.0;
  float largerDimension=0.0, smallerDimension=0.0;
  float imageWidthRatio=0.0, imageHeightRatio=0.0;
  //
  if (restartButtonImageWidth >= restartButtonImageHeight) {//Images largest dimennsion, landscape or square
    largerDimension = restartButtonImageWidth;
    smallerDimension = restartButtonImageHeight;
    //
    //images matching dimension to rectangles matching dimension
    restartButtonImageWidth_Adjusted = restartButtonImageRectWidth;
    imageHeightRatio = smallerDimension / largerDimension;// value<1, main point of all
    restartButtonImageHeight_Calculated= imageHeightRatio * restartButtonImageRectWidth;
    //
    //Debugging: x-value must be centered
    float centerX=appWidth*1/2;
    restartButtonImageRectX = centerX - restartButtonImageWidth_Adjusted * 1/2;
    image(restartButtonImage, restartButtonImageRectX, restartButtonImageRectY, restartButtonImageWidth_Adjusted, restartButtonImageHeight_Calculated);
    //
  } else {//portrait
    largerDimension = restartButtonImageHeight;
    smallerDimension = restartButtonImageWidth;
    //
    //images matching dimension to rectangles matching dimension
    restartButtonImageHeight_Adjusted = restartButtonImageRectHeight;
    imageWidthRatio = smallerDimension / largerDimension;// value<1, main point of all
    restartButtonImageWidth_Calculated= imageWidthRatio * restartButtonImageRectHeight;
    //
    //Debugging: x-value must be centered
    float centerX=appWidth*1/2;
    restartButtonImageRectX = centerX - restartButtonImageWidth_Adjusted * 1/2;
    //rect(); //screen to hoverover
    image(restartButtonImage, restartButtonImageRectX, restartButtonImageRectY, restartButtonImageWidth_Adjusted, restartButtonImageHeight_Calculated);
    //
    image(restartButtonImage, restartButtonImageRectX, restartButtonImageRectY, restartButtonImageWidth_Adjusted, restartButtonImageHeight_Calculated);
  }
  }//End restartButtonImage
//End Image Subprogram
