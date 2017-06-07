void updateBallVelocity() {
  ballVy += gravity; 
}
 

  // Add control for movement keys here

void updateBallPosition() {
  ballX += ballVx;
  ballY += ballVy;
}

void resolveCollisions() {
  // Resolving Collisions with floor (bottom wall).
  if (ballY > displayHeight-ballRadius){
    ballY = displayHeight-ballRadius;
    ballVy *= -restitutionCoeff;
  }
  
  // Resolve Collisions with all other walls.



// Resolving Collisions with ceiling (top wall).
 if (ballY-ballRadius< 0){
   ballY = 0+ballRadius;
   ballVy = ballVy* -restitutionCoeff;
 }

// Resolving Collisions with left (left wall).
 if (ballX-ballRadius< 0){
   ballX = 0+ballRadius;
   ballVx = ballVx* -restitutionCoeff;
 }
 if (ballX+ballRadius> displayWidth){
   ballX = displayWidth-ballRadius;
   ballVx = ballVx* -restitutionCoeff;
 }
}

 