
Ball ball = new Ball();
float speed = 0; //speed of ball
float gravity = 0.1; //force of gravity
float dampening = -0.35; //force the ball will bounce back up
float acceleration;
float floor;
float wall;

void setup() {
  frameRate(60);
  size(1280, 720);
  ball.x = width/2;
  ball.y = height/2;
  ball.w = 50;
  ball.h = 50;
  floor = height - ball.h/2;
  wall = width - ball.w/2;
}

void draw() {
  background(255);
  physics();
  ball.render();
}
