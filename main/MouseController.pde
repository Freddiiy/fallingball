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

boolean m1Pressed;
int lastMousePosX, lastMousePosY;
int mousePosX = mouseX, mousePosY = mouseY;

void mousePressed() {
  if (mouseButton == LEFT) {
    m1Pressed = true;

    lastMousePosX = mousePosX;
    lastMousePosY = mousePosY;
  }
  if (mouseButton == RIGHT) {
    portal.active = true;
    println(portal.active);
    
    portal.x = mousePosX;
    portal.y = mousePosY;
    
  }
}

void mouseReleased() {


  //When mousebutton released throws the ball.
  float dragForce = 20.0;
  if (mouseButton == LEFT) {
    m1Pressed = false;
 
    ball.speed = (lastMousePosY - mousePosY) / dragForce;
    ball.acceleration = (lastMousePosX - mousePosX) / dragForce;
  }
  if (mouseButton == RIGHT) {
      
  }
}

void keyPressed() {
  if (key == 'q') {
    portal.active = false;
  }
}
