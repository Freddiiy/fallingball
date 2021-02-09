void physics() {
  ball.y = ball.y + speed;
  speed = speed + gravity;
  if (ball.y > floor) {
    speed = speed * dampening;
    ball.y = floor;
  }
  /*if (ballX < floor) {
    speed = speed * dampening;
    ballX = wall;
  }
  */
}
