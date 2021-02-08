float ballX, ballY, ballW, ballH; //location of ball

float speed = 0; //speed of ball
float gravity = 0.1; //force of gravity
float dampening = -0.65; //force the ball will bounce back up
float floor;

void setup() {
  size(1280, 720);
  ballX = width/2;
  ballY = height/2;
  ballW = 50;
  ballH = 50;
  floor = height - ballH/2;
}

void draw() {
  background(255);
  //draws ellipse
  fill(0, 255, 255);
  ellipse(ballX, ballY, ballW, ballH);

  ballY = ballY + speed;
  speed = speed + gravity;
  if (ballY > floor) {
    speed = speed * dampening;
    ballY = floor;
  }
}

void mousePressed() {
  ballX = mouseX;
  ballY = mouseY;
  translate(mouseX, mouseY);
}

void mouseReleased() {
}
