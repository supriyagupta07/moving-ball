/* Lab 05 COMP 1010
   Template
   Bronze exercise
  
   Draw a circle that moves back and forth along a horizontal
   line, freezing in place whenever the mouse button is pressed.
*/

final int X_LEFT = 100;  //The left end of the horizontal line.
final int X_RIGHT = 400; //The right end of the horizontal line.
final int Y = 100;       //The y position of the line and circle.
final int BALL_DIAM = 50;     //The diameter of the circle
final float BALL_SPEED = 2.5; //Its speed (pixels/second)
final int lineX=100;
final int lineY=100;
final int line_X=400;
final int line_Y=100;
int posX=100;



//****1) The state variables needed go here:
boolean moveRight=true;


void setup(){
  size(500,200);
}

void draw(){
  moveBall();
  drawAll();
}

//****2) Add your functions here:
void moveBall(){
 
 if(posX<X_LEFT||posX>X_RIGHT){
   moveRight=!moveRight;
 }
if(!mousePressed){
  if(moveRight){
  posX=posX+5;}
  else{
    posX=posX-5;
  }
  
 
}

}
void drawAll(){
  background(180);
  line(lineX,lineY,line_X,line_Y);
  ellipse(posX,Y,BALL_DIAM,BALL_DIAM);
 
}
