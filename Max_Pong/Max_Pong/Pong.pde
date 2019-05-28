public class Bar1 {
  int Bar1;
  int Bar2;
  int Scoreboard;
  int Ball;
  float x=1392;
  float y;
  float w;
  float h;


  public Bar1() {
  }
  void Bar() {  
    rectMode(CENTER);
    fill(255, 255, 255);
    rect(x, 500+y, 10, 200);
  }
  void display(){
    fill(255, 0, 0);
    rect(x, y, w, h);
  }
  float getY(){
    return y;
  }
  
  float getX(){
    return x;
  }
  float getH(){
    return h;
  }
  float getW(){
    return w;
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
        y-=5;
      if (key=='s' && y<428)
        y+=5;
    }
  }
}
