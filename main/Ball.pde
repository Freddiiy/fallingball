class Ball {
  public float speed = 0;
  public float acceleration = 0;
  public float x, y, w, h;
  void render() {
    //draws ellipse
    fill(0, 255, 255);
    ellipse(x, y, w, h);
  }
  void physics() {
    this.y = this.y + this.speed;
    this.x = this.x + this.acceleration;
    this.speed = this.speed + gravity;
    // checks for floor colision
    if (this.y > floor) {
      this.speed = this.speed * dampening;
      this.acceleration = -this.acceleration * dampening;
      this.y = floor;
    }
    //checks for roof collision
    /*if (this.y < roof) {
      this.speed = this.speed * dampening;
      this.y = roof;
    }
    */
    // checks for left wall
    if (this.x < lWall) {
      this.acceleration = this.acceleration * dampening;
      this.x = lWall;
    }
    // checks for left wall
    if (this.x > rWall) {
      this.acceleration = this.acceleration * dampening;
      this.x = rWall;
    }
  }
}
