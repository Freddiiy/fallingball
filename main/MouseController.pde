void mouseController() {
  // makes the ball follow curser
  // creates a line from cliked to held mouse point
  if (m1Pressed == true) {
    ball.x = mousePosX;
    ball.y = mousePosY;
    ball.speed = 0;

    fill(0);
    line(lastMousePosX, lastMousePosY, mousePosX, mousePosY);
  }
  mousePosX = mouseX;
  mousePosY = mouseY;
  println(lastMousePosX + " " + lastMousePosY + " " + mousePosX + " " + mousePosY);
  println(ball.x + " " + ball.y);
}

void mouseDragged() {
}

boolean m1Pressed;
int lastMousePosX, lastMousePosY;
int mousePosX = mouseX, mousePosY = mouseY;

void mousePressed() {
  m1Pressed = true;

  lastMousePosX = mousePosX;
  lastMousePosY = mousePosY;
}

void mouseReleased() {
  m1Pressed = false;
  
  //When mousebutton released throws the ball.
  float dragForce = 20.0;
  ball.speed = (lastMousePosY - mousePosY) / dragForce;
  ball.acceleration = (lastMousePosX - mousePosX) / dragForce;
}
