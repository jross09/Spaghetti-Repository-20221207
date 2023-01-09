PImage imageOne;
float oneX, oneY, oneWidth, oneHeight;
//
void buttonImages() {
  imageOne = loadImage ("../Images Used/me!");
  rect (oneX, oneY, oneWidth, oneHeight);
  image (imageOne, oneX, oneY, oneWidth, oneHeight);
  
}//End buttonImages
