Bar1 g;
Ball b;
boolean on=false;
boolean off=false;

void setup() {
  size(1400, 1000);
  g=new Bar1(1380, 300, 20, 200);
  b=new Ball(280, 130, 15, 15);
}


void draw() {
  background(0, 0, 0); 
  //p.Bar1();
  //p.move();
  b.move();
  Rebound(); 
  g.display();
  b.display();
  moveBar1();
  g.Scoreboard(g.getscore());
}
void moveBar1() {
  if (on) {
    g.move();
  }
}
void Rebound() {
  if (b.getX()+b.getW()/2>g.getX()&&b.getY()+b.getH()>g.getY()&&b.getY()<g.getY()+g.getH()) {
    b.getBallSpeedX();
    b.getBallSpeedY();
    println("ping");
  }
  if (b.getX()<width/2) {
    //b.getWallSpeedX();
  }
  if (b.getX()>width) {
    b.getWallSpeedX();
  }
  if (b.getY()>height) {
    b.getWallSpeedY();
  }
  if (b.getY()<0) {
    b.getWallSpeedY();
  }
}
void keyPressed() {
  on=true;
}
void keyReleased() {
  on=false;
}
