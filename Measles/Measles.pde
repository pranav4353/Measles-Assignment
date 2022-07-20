//Global Variables
float xFace, yFace, widthDiameterFace, heightDiameterFace, faceRadius, xCenter, smallerDimension;
float xLeftEye, yLeftEye, xRightEye, yRightEye, eyeDiameter;
float xLeftEye1, yLeftEye1, xRightEye1, yRightEye1, eyeDiameter1;
float xNoseBridge, yNoseBridge, xLeftNostril, yLeftNostril, xRightNostril, yRightNostril;
float xLeftMouth1, yLeftMouth1, xRightMouth1, yRightMouth1;
float xLeftMouth2, yLeftMouth2, xRightMouth2, yRightMouth2;
int thack=10;
float xMeasle, yMeasle, measleDiameter;
color resetWhite=#FFFFFF, red=#EA1515 , black=#120000; //similar to int declaration
color backgroundColor;
Boolean nightMode=false;
PImage pic;
float imgX, imgY, imgWidth, imgHeight, imageLargerDimension, imageSmallerDimension, imageWidthRatio=0.0, imageHeightRatio=0.0;
float picWidthAdjusted, picHeightAdjusted;
Boolean widthLarger = false, heightLarger = false;
//
void setup() 
{
  //CANVAS will be added to later
  size(800, 600); //Landscape
  //
  //Pouplation
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
    imgX = height*1/9;
    imgY = height*2/3;
    imgWidth = width*4/5; //CANVAS (0,0) means point doesn't match to rectangle, missing outline on two sides
    imgHeight = height*5/5;
      picWidthAdjusted = imgWidth * imageWidthRatio;
  picHeightAdjusted = imgHeight * imageHeightRatio;
  println(imgX, imgY, picWidthAdjusted, picHeightAdjusted);
    //
    //
    //
    //
    //
    xCenter = width/2;
    float yCenter = height/2;
    xFace = xCenter;
    yFace = yCenter;
    if (width >= height ) {
      smallerDimension = height;
    } else {
      smallerDimension = width;
    }
    //End dimension choice
    widthDiameterFace = smallerDimension;
    heightDiameterFace = smallerDimension;
    xLeftEye = xCenter-smallerDimension*1/4;
    yLeftEye = yCenter-smallerDimension*1/4;
    xRightEye = xCenter+smallerDimension*1/4;
    yRightEye = yCenter-smallerDimension*1/4;
    eyeDiameter = smallerDimension*1/10;
    xLeftEye1 = xCenter-smallerDimension*1/4;
    yLeftEye1 = yCenter-smallerDimension*1/4;
    xRightEye1 = xCenter+smallerDimension*1/4;
    yRightEye1 = yCenter-smallerDimension*1/4;
    eyeDiameter1 = smallerDimension*1/20;
    xNoseBridge = xCenter;
    yNoseBridge = yCenter-smallerDimension*1/132;
    xLeftNostril = xCenter-smallerDimension*1/30; 
    yLeftNostril = yCenter+smallerDimension*1/32;
    xRightNostril = xCenter+smallerDimension*1/30;
    yRightNostril = yLeftNostril;
    xLeftMouth1 = xNoseBridge;
    yLeftMouth1 = yNoseBridge+height*1/6;
    xRightMouth1 = xRightEye;
    yRightMouth1 =  yNoseBridge+height*2/6;
     xLeftMouth2 = xLeftEye;
    yLeftMouth2 =  yNoseBridge+height*2/6;
    xRightMouth2 =  xNoseBridge;
    yRightMouth2 = yNoseBridge+height*1/6;
    faceRadius = smallerDimension/2;
    //
    Boolean nightMode=false;
    backgroundColor = ( nightMode==true ) ? color( random(255), random(255), 0 ) : color( random(255), random(255), random(255) ) ; //ternary operator, similar to IF-Else
    background( backgroundColor );
    ellipse(xFace, yFace, widthDiameterFace, heightDiameterFace); // Face
    //
  }//End setup
  //
  void draw() 
  {
    ellipse(xLeftEye, yLeftEye, eyeDiameter, eyeDiameter);  // Left eye
    ellipse(xRightEye, yRightEye, eyeDiameter, eyeDiameter);  // Right eye
    fill(black);
    ellipse(xLeftEye1, yLeftEye1, eyeDiameter1, eyeDiameter1);  // Left pupil
    ellipse(xRightEye1, yRightEye1, eyeDiameter1, eyeDiameter1);  // Right pupil
    fill(resetWhite);
    triangle(xNoseBridge, yNoseBridge, xLeftNostril, yLeftNostril, xRightNostril, yRightNostril);
    strokeCap(SQUARE); //ROUND (default), PROJECT
    strokeWeight(thack);
    line(xLeftMouth1, yLeftMouth1, xRightMouth1, yRightMouth1);
    line(xLeftMouth2, yLeftMouth2, xRightMouth2, yRightMouth2);
    strokeWeight(1); //reset default
    //
    xMeasle = random(xCenter-faceRadius, xCenter+faceRadius);
    yMeasle = random(smallerDimension); //if zero is first, then default
    //rect(xCenter-faceRadius, 0, xCenter+faceRadius, smallerDimension);
    fill(red);
    noStroke();
    measleDiameter = random(smallerDimension*1/75, smallerDimension*1/25);
    ellipse(xMeasle, yMeasle, measleDiameter, measleDiameter);
    stroke(1); //reset default
    fill(resetWhite);
    image(pic, imgX, imgY, picWidthAdjusted, picHeightAdjusted);
    //
    //
  }//End draw
  //
  void keyPressed() {
  }//End keyPressed
  //
  void mousePressed() {
    //Technically, there are four ways to code a mouse button press
    if ( mouseButton == LEFT ) { //Night Mode FALSE
      backgroundColor = color( random(255), random(255), random(255) );
      background( backgroundColor );
      ellipse(xFace, yFace, widthDiameterFace, heightDiameterFace);
    }//End Left Mouse Button
    if ( mouseButton == RIGHT) { //Night Mode TRUE
      backgroundColor = color( random(255), random(255), 0 );
      background( backgroundColor );
      ellipse(xFace, yFace, widthDiameterFace, heightDiameterFace);
    }//End Right Mouse Button
    //if ( mouseButton == WHEEL ) {}//End Mouse Wheel
    /* For any button
     if ( nightMode == false ) { //NightMode Switch
     nightMode = true;
     } else {
     nightMode = false;    
     } //End nightMode switch
     
     backgroundColor = ( nightMode==true ) ? color( random(255), random(255), 0 ) : color( random(255), random(255), random(255) ) ; //ternary operator, similar to IF-Else
     background( backgroundColor );
     ellipse(xFace, yFace, widthDiameterFace, heightDiameterFace); // Face
     */
  }//End mousePressed
  //
  //End MAIN Program
