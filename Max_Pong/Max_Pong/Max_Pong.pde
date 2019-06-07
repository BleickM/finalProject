Bar1 g;
Ball b;
boolean on=false;
boolean off=false;

void setup() {
  size(1400, 1000);
  g=new Bar1(1380, 300, 30, 200);
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
  b.Scoreboard(b.score);

}
void moveBar1() {
  if (on) {
    g.move();
  }
}
void Rebound() {
  if (b.getX()+b.getW()>g.getX()&&b.getY()+b.getH()>g.getY()&&b.getY()<g.getY()+g.getH()) {
    b.getBallSpeedX();
    b.getBallSpeedY();
    println("ping");
    b.score++;
  }
   if(b.getX()>1395){
    b.score=0;
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
