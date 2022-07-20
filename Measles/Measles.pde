//Global Variables

//
void setup() 
{
  //CANVAS will be added to later
  size(1000, 600); //Landscape
  //
  //Pouplation
  picPouplation();
  //
  facePopulation();
  //
  buttonsSetup();
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
  faceDraw();
  //
  imageDraw();
  //
  buttonsDraw();
  //
}//End draw
//
void keyPressed() {
}//End keyPressed
//
void mousePressed() {
  nightMode();
}//End mousePressed
//
//End MAIN Program
