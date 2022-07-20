color blue = #41ABBF, lightBlue = #2BC6EA, resetButtonColour, buttonFill; //Not Night Mode Friendly Colours
//
void buttonsDraw() {
  //Technically, there are four ways to code a mouse button press
  //Hover-over
  if ( mouseX>buttonX1 && mouseX<buttonX1+buttonWidth1 && mouseY>buttonY1 && mouseY<buttonY1+buttonHeight1 ) {
    buttonFill = lightBlue;
  } else {
    buttonFill = blue;
  }//End Hover-over
  fill(buttonFill);
  rect(buttonX1, buttonY1, buttonWidth1, buttonHeight1);
  fill(resetButtonColour);
  if ( mouseX>buttonX2 && mouseX<buttonX2+buttonWidth2 && mouseY>buttonY2 && mouseY<buttonY2+buttonHeight2 ) {
    buttonFill = lightBlue;
  } else {
    buttonFill = blue;
  }
  fill(buttonFill);
  rect(buttonX2, buttonY2, buttonWidth2, buttonHeight2);
  fill(resetButtonColour);
}
