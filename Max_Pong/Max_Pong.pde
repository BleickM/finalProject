 float y=0;
Pong []pg2=new Pong[250];
Pong p=new Pong();
Ball b=new Ball(900, (int)(Math.random()*900)+1);
void setup() {
  size(1400, 1000);
  for (int i=0; i<pg2.length; i++) {
    pg2[i]=new Pong();
  }

}
void draw() {
  background(0, 0, 0); 
  for (int i=0; i<pg2.length; i++) {

    pg2[i].Bar1();
   //p.Bar1();
   //p.move();
   pg2[i].move();
    
  }
  b.display();
  b.move();
}
