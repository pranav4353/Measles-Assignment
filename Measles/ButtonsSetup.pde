float buttonX1, buttonY1, buttonWidth1, buttonHeight1;
float buttonX2, buttonY2, buttonWidth2, buttonHeight2;
String title = "Night Mode", title1 = "Day Mode";
PFont titleFont;
int titleSize, titleSize1;
//
void buttonsSetup() {
  buttonX1 = xCenter+faceRadius-20;
  buttonY1 = yCenter-faceRadius*8/9;
  buttonWidth1 = xCenter-faceRadius;
  buttonHeight1 = xCenter/10;
  //
  buttonX2 = xCenter+faceRadius-20;
  buttonY2 = yCenter-faceRadius*6/9;
  buttonWidth2 = xCenter-faceRadius;
  buttonHeight2 = xCenter/10;
  //
  String[] fontList = PFont.list();
  printArray(fontList);
  titleFont = createFont("Monospaced.bolditalic", 48);
  //
  printArray(fontList);
  titleFont = createFont("Monospaced.bolditalic", 48);
}
