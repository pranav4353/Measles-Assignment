//Global Variables
float xFace, yFace, widthDiameterFace, heightDiameterFace;
float xLeftEye, YLeftEye, xRightEye, YRightEye, eyeDiameter;
float xNosebridge, yNosebridge, xLeftNostril, yLeftNostril, xRightNostril, yRightNostril;
float xLeftMouth, yLeftMouth, xRightMouth, yRightMouth;
float xmeasle, ymeasle, measleDiameter;
//
void setup() 
{
  //CANVAS will be added to later
  size(800, 600); //Landscape
  //
  //Pouplation
  xFace = width/2;
  yFace = height/2;
  float smallerDimension;
  if (width >= height ) {
    smallerDimension = height;
  } else {
    smallerDimension = width;
  }
  //End dimension choice
  widthDiameterFace = smallerDimension;
  heightDiameterFace = smallerDimension;
  xLeftEye = width*1/3;
  YLeftEye = height*1/3;
  xRightEye = width*2/3;
  YRightEye = height*1/3;
  eyeDiameter = height/10;
  xNosebridge = width/2;
  yNosebridge = height/2;
  xLeftNostril = width*9/20;
  yLeftNostril = height*6/10;
  xRightNostril = width*11/20;
  yRightNostril = height*6/10;
  xLeftMouth = width*7/20;
  yLeftMouth = height*6/7;
  xRightMouth = width*13/20;
  yRightMouth = height*6/7;
  xmeasle = height;
  ymeasle = height;
  measleDiameter = 0;
  //
}//End setup
//
void draw() 
{
  ellipse(xFace, yFace, widthDiameterFace, heightDiameterFace); // Face
  ellipse(xLeftEye, YLeftEye, eyeDiameter, eyeDiameter);  // Left eye
  ellipse(xRightEye, YRightEye, eyeDiameter, eyeDiameter);  // Right eye
  triangle(xNosebridge, yNosebridge, xLeftNostril, yLeftNostril, xRightNostril, yRightNostril);
  line(xLeftMouth, yLeftMouth, xRightMouth, yRightMouth);
  //
  ellipse(xmeasle, ymeasle, measleDiameter, measleDiameter);
  //
}//End draw
//
void keyPressed() {}//End keyPressed
//
void mousePressed() {}//End mousePressed
//
//End MAIN Program
