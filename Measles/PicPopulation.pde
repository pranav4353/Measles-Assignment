PImage pic, pic1;
float imgX, imgY, imgWidth, imgHeight, imageLargerDimension, imageSmallerDimension, imageWidthRatio=0.0, imageHeightRatio=0.0;
float imgX1, imgY1, imgWidth1, imgHeight1, imageLargerDimension1, imageSmallerDimension1;
float picWidthAdjusted, picHeightAdjusted;
float picWidthAdjusted1, picHeightAdjusted1;
Boolean widthLarger = false, heightLarger = false;
Boolean widthLarger1 = false, heightLarger1 = false;
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
  pic1 = loadImage("../Images/ear-muffs.svg.hi.png"); //Dimentions: width: 1280 height: 879
  int picWidth1 = 600;
  int picHeight1 = 298;
  if ( picWidth1 >= picHeight1 ) { //Image Dimension Comparison
    //True is Landscape or Square
    imageLargerDimension1 = picWidth1;
    imageSmallerDimension1 = picHeight1;
    widthLarger1 = true;
  } else {
    //False if Portrait
    imageLargerDimension1 = picHeight1;
    imageSmallerDimension1 = picWidth1;
    heightLarger1 = true;
  }
  if ( widthLarger1 == true ) imageWidthRatio = imageLargerDimension1/imageLargerDimension1;
  if ( widthLarger1 == true ) imageHeightRatio = imageSmallerDimension1/imageLargerDimension1;
  if ( heightLarger1 == true ) imageWidthRatio = imageSmallerDimension1/imageLargerDimension1;
  if ( heightLarger1 == true ) imageWidthRatio = imageLargerDimension1/imageLargerDimension1;
  //
  imgX = width*3/20;
  imgY = height*2/3;
  imgWidth = width*6/9; //CANVAS (0,0) means point doesn't match to rectangle, missing outline on two sides
  imgHeight = height*7/5;
  picWidthAdjusted = imgWidth * imageWidthRatio;
  picHeightAdjusted = imgHeight * imageHeightRatio;
  //
  imgX1 = width*9/80;
  imgY1 = height*0;
  imgWidth1 = width*14/18; //CANVAS (0,0) means point doesn't match to rectangle, missing outline on two sides
  imgHeight1 = height*7/5;
  picWidthAdjusted1 = imgWidth1 * imageWidthRatio;
  picHeightAdjusted1 = imgHeight1 * imageHeightRatio;
  //
  println(imgX, imgY, picWidthAdjusted, picHeightAdjusted);
  println(imgX1, imgY1, picWidthAdjusted1, picHeightAdjusted1);
}
