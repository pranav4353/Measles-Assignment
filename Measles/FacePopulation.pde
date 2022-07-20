float xFace, yFace, widthDiameterFace, heightDiameterFace, faceRadius, xCenter, yCenter, smallerDimension;
float xLeftEye, yLeftEye, xRightEye, yRightEye, eyeDiameter;
float xLeftEye1, yLeftEye1, xRightEye1, yRightEye1, eyeDiameter1;
float xNoseBridge, yNoseBridge, xLeftNostril, yLeftNostril, xRightNostril, yRightNostril;
float xLeftMouth1, yLeftMouth1, xRightMouth1, yRightMouth1;
float xLeftMouth2, yLeftMouth2, xRightMouth2, yRightMouth2;
//
void facePopulation() {
  xCenter = width/2;
 yCenter = height/2;
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
}
