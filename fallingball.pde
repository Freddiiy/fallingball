int ballX, ballY, ballW, ballH;
int gravity = 10;
int floor = height;
void setup() {
  size(1280, 720);
  ballW = 50;
  ballH = 50;
}

void draw() {
  background(255);
  //draws ellipse
  fill(0 , 255, 255);
  ellipse(ballX, ballY, ballW, ballH);
  if (ballY < floor) {
    ballY = ballY + gravity;
    
  }
  else if (ballY > floor){
    ballY = height-ballH;
  }
}

int m1Pressed;
void mouseClicked() {
  ballX = mouseX;
  ballY = mouseY;
  translate(mouseX, mouseY);
}

void mouseReleased() {

}
