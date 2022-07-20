int thack=10;
float xMeasle, yMeasle, measleDiameter;
color resetWhite=#FFFFFF, red=#EA1515, black=#120000; //similar to int declaration
color backgroundColor;
//
void faceDraw() {
  fill(resetWhite);
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
}
