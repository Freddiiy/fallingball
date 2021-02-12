class Ball {
  public float gravity = 0.1; //force of gravity
  public float dampening = -0.50; //force the ball will bounce back up
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
    if (this.y < roof) {
      this.speed = this.speed * dampening;
      this.y = roof;
    }
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
    float rightSideOfBall = this.x + ball.w/2;
    float leftSideOfBall = this.x - ball.w/2;
    float botSideOfBall = this.y + ball.h/2;
    float topSideOfBall = this.y - ball.h/2;
    
    float leftSideOfOrangePortal = portal.x - portal.w/2;
    //checks for orange portal
    if (portal.active == true) {
      if (this.x + ball.w/2 > portal.x - portal.w/2 && //detects left side of portal
          this.x - ball.w/2 < portal.x + portal.w/2 && //detects right side of portal
          this.y + ball.h/2 > portal.y - portal.h/2 && //detects 
          this.y + ball.h/2 > portal.y + portal.h/2) {
        this.x = portal.bx;
        this.y = portal.by;
      }
    }
  }
}
