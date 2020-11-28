color white = color(255, 255, 255);
color red = color(255, 0, 0);

int xPos;
int yPos;

int xPosApple;
int yPosApple;

int grid = 20;

void setup() {  // setup() runs once
  size(1000, 1000);
  frameRate(5);
}
 
void draw() {  // draw() loops forever, until stopped
  background(0);
  fill(white);
  if (keyCode == LEFT) xPos  = xPos - 1;
  if (keyCode == RIGHT) xPos  = xPos + 1;
  if (keyCode == UP) yPos  = yPos - 1;
  if (keyCode == DOWN) yPos  = yPos + 1;
  rectMode(CENTER);
  rect(xPos*grid+10, yPos*grid+10, 20, 20);
  if ((xPos == xPosApple) && (yPos == yPosApple)){
    xPosApple = int(random(50));
    yPosApple = int(random(50));
  }
  fill(red);
  rect(xPosApple*grid+10, yPosApple*grid+10, 20, 20);
}
