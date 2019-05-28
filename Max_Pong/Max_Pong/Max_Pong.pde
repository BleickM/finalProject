 float y=0;
Bar1 []pg2=new Bar1[250];
Bar1 g=new Bar1();
Ball b=new Ball(280,130, 15, 15);
void setup() {
  size(1400, 1000);
  for (int i=0; i<pg2.length; i++) {
    pg2[i]=new Bar1();
  }

}
void draw() {
  background(0, 0, 0); 
  for (int i=0; i<pg2.length; i++) {

    pg2[i].Bar();
   //p.Bar1();
   //p.move();
   pg2[i].move();
   Rebound(); 
  }
  g.display();
  b.display();
  b.move();
}
void Rebound(){
if (b.getX()+b.getW()/2>g.getX()&&b.getY()+b.getH()>g.getY()&&b.getY()<g.getY()+g.getH()) {
    b.getBallSpeedX();
    b.getBallSpeedY();
    println("ping");
}
 if (b.getX()<width/2) {
    b.getWallSpeedX();
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
