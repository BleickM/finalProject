public class Pong {
  int Bar1;
  int Bar2;
  int Scoreboard;
  int Ball;
  float x=1392;
 

  void Ball() {
  }

  public Pong() {
  }
  void Bar1() {  
    rectMode(CENTER);
    fill(255, 255, 255);
    rect(x, 500+y, 10, 200);
  }
  float getY(){
    return y;
  }
  
  float getX(){
    return x;
  }
  void Bar2() {
    fill(255, 255, 255);
    rect(-1, 500, 8, 70);
  }
  void Scoreboard(int score) {
    fill(255, 255, 255);
  }
  void move() {
    if (keyPressed==true) {
      if (key=='w' && y>-500) 
        y-=0.05;
      if (key=='s' && y<428)
        y+=0.05;
    }
  }
}
