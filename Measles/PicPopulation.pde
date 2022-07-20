PImage pic;
float imgX, imgY, imgWidth, imgHeight, imageLargerDimension, imageSmallerDimension, imageWidthRatio=0.0, imageHeightRatio=0.0;
float picWidthAdjusted, picHeightAdjusted;
Boolean widthLarger = false, heightLarger = false;
//

void picPouplation() {
  pic = loadImage("../Images/Scarf-clipart-transparent-background-9.png"); //Dimentions: width: 1280 height: 879
  int picWidth = 1280;
  int picHeight = 879;
  if ( picWidth >= picHeight ) { //Image Dimension Comparison
    //True is Landscape or Square
    imageLargerDimension = picWidth;
    imageSmallerDimension = picHeight;
    widthLarger = true;
  } else {
    //False if Portrait
    imageLargerDimension = picHeight;
    imageSmallerDimension = picWidth;
    heightLarger = true;
  }
  if ( widthLarger == true ) imageWidthRatio = imageLargerDimension/imageLargerDimension;
  if ( widthLarger == true ) imageHeightRatio = imageSmallerDimension/imageLargerDimension;
  if ( heightLarger == true ) imageWidthRatio = imageSmallerDimension/imageLargerDimension;
  if ( heightLarger == true ) imageWidthRatio = imageLargerDimension/imageLargerDimension;
  //
  imgX = height*5/20;
  imgY = height*2/3;
  imgWidth = width*6/9; //CANVAS (0,0) means point doesn't match to rectangle, missing outline on two sides
  imgHeight = height*5/5;
  picWidthAdjusted = imgWidth * imageWidthRatio;
  picHeightAdjusted = imgHeight * imageHeightRatio;
  println(imgX, imgY, picWidthAdjusted, picHeightAdjusted);
}
