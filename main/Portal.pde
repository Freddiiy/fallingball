class Portal {
  void render() {
    orangePortal();
    bluePortal();
  }
  
  float x, y, w = 10, h = 50;
  boolean active;
  void orangePortal() {
    if (this.active == true) {
      fill(255, 140, 0);
      rectMode(CENTER);
      rect(this.x, this.y, this.w, this.h);
    }
  }
  
  float bx = 200, by = 200, bw, bh;
  void bluePortal() {
    if (this.active == true) {
      fill(0, 0, 255);
      rectMode(CENTER);
      rect(this.bx, this.by, this.w, this.h);
    }
  }
}
