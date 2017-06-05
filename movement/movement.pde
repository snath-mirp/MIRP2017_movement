int displayWidth=500, displayHeight=500;

float MAX_VELOCITY = 10;

float bgColor = 0;

float gravity = 0.25;
float ballX, ballY;
float ballVx = 0, ballVy = 0;
float ballRadius = 10;
float ballColor = 255;

float restitutionCoeff = 0.95;

char UP = 'w', LEFT = 'a', RIGHT = 'd';
boolean up, left, right;

boolean keys[] = new boolean [4];

void setup() {
  size(displayWidth, displayHeight);
  ballX=displayWidth/2;
  ballY=displayHeight/2;
  ballVx = 0;
  ballVy = 0;
}

void draw() {
  background(bgColor);
  drawBall();
  updateBallVelocity();
  updateBallPosition();
  resolveCollisions();
}

void drawBall() {
  fill(ballColor);
  ellipse(ballX, ballY, 2*ballRadius, 2*ballRadius);
}