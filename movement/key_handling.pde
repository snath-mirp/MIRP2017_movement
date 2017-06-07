void keyPressed() {
  if (key == UP)       up = true;
  if (key == LEFT)     left = true;
  if (key == RIGHT)    right = true;
  if (key == DOWN)    down = true;
}

void keyReleased() {
  if (key == UP)       up = false;
  if (key == LEFT)     left = false;
  if (key == RIGHT)    right = false;
  if (key == DOWN)    down = false;
}

int movementLength = 2;
float velocityIncrease = 0.3;
void detectKeys(){
if(right)
ballVx=ballVx+velocityIncrease ;
if(left)
ballVx=ballVx-velocityIncrease ;
if(up)
ballVy=ballVy-velocityIncrease ;
if(down)
ballY=ballY+velocityIncrease;
}