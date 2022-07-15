//Global Variables
float xFace, yFace, widthDiameterFace, heightDiameterFace, faceRadius, xCenter, smallerDimension;
float xLeftEye, yLeftEye, xRightEye, yRightEye, eyeDiameter;
float xNoseBridge, yNoseBridge, xLeftNostril, yLeftNostril, xRightNostril, yRightNostril;
float xLeftMouth, yLeftMouth, xRightMouth, yRightMouth;
int thack=50;
float xMeasle, yMeasle, measleDiameter;
color resetWhite=#FFFFFF, red=#EA1515; //similar to int declaration
color backgroundColor;
Boolean nightMode=false;
//
void setup() 
{
  //CANVAS will be added to later
  size(800, 600); //Landscape
  //
  //Pouplation
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
  xNoseBridge = xCenter;
  yNoseBridge = yCenter-smallerDimension*1/132;
  xLeftNostril = xCenter-smallerDimension*1/30; 
  yLeftNostril = yCenter+smallerDimension*1/32;
  xRightNostril = xCenter+smallerDimension*1/30;
  yRightNostril = yLeftNostril;
  xLeftMouth = xLeftEye;
  yLeftMouth = yCenter+smallerDimension*1/4;
  xRightMouth = xRightEye;
  yRightMouth = yLeftMouth;
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
  triangle(xNoseBridge, yNoseBridge, xLeftNostril, yLeftNostril, xRightNostril, yRightNostril);
  strokeCap(SQUARE); //ROUND (default), PROJECT
  strokeWeight(thack);
  line(xLeftMouth, yLeftMouth, xRightMouth, yRightMouth);
  strokeWeight(1); //reset default
  //
  xMeasle = random(xCenter-faceRadius, xCenter+faceRadius);
  yMeasle = random(smallerDimension); //if zero is first, then default
  fill(red);
  noStroke();
  measleDiameter = random(smallerDimension*1/75, smallerDimension*1/25);
  ellipse(xMeasle, yMeasle, measleDiameter, measleDiameter);
  stroke(1); //reset default
  fill(resetWhite);
  //
  //
}//End draw
//
void keyPressed() {}//End keyPressed
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
