
//
void nightMode() {
  if ( mouseX>buttonX1 && mouseX<buttonX1+buttonWidth1 && mouseY>buttonY1 && mouseY<buttonY1+buttonHeight1 ) {
    backgroundColor = color( random(255), random(255), 0 );
    background( backgroundColor );
    fill (resetWhite);
    ellipse(xFace, yFace, widthDiameterFace, heightDiameterFace);
  }
  if ( mouseX>buttonX2 && mouseX<buttonX2+buttonWidth2 && mouseY>buttonY2 && mouseY<buttonY2+buttonHeight2 ) {
    backgroundColor = color( random(255), random(255), random(255) );
    background( backgroundColor );
    fill (resetWhite);
    ellipse(xFace, yFace, widthDiameterFace, heightDiameterFace);
  }



  //
  /* if ( mouseButton == LEFT ) { //Night Mode FALSE
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
}
