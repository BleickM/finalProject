class Ball {
  float x;
  float y;
  float speed=1.62;

  public Ball(float x, float y) {
    this.x=x;
    this.y=y;

    
  }


  void display() {
    fill(255, 0, 0);
    ellipse(x, y, 20, 20);
  }

  void move() {
    x+=speed;

    println(x);

    if (x>1400-10) {
      //speed*=-1;
    }
    for (int i=0; i<pg2.length; i++) {
      if (x>pg2[i].getX()+100&&x<pg2[i].getX()-100&&y>pg2[i].getY()+100&&y<pg2[i].getY()-100) {
        speed*=-1;
      }
    }
  }
}
