float gravity = 0.1; //force of gravity
float dampening = -0.50; //force the ball will bounce back up
float acceleration;
float floor;
float roof;
float rWall, lWall;

Ball ball = new Ball();

void setup() {
  frameRate(60);
  size(1280, 720);
  ball.x = width/2;
  ball.y = height/2;
  ball.w = 50;
  ball.h = 50;
  floor = height - ball.h/2;
  roof = height-height + ball.h/2;
  lWall = width-width + ball.w/2;
  rWall = width - ball.w/2;
}

void draw() {
  background(255);
  ball.render();
  ball.physics();
  mouseController();
}
