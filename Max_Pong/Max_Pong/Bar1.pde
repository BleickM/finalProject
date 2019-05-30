public class Bar1 {
  float Scoreboard;
float xspeed;
float yspeed;
  float x;
  float y;
  float w;
  float h;
  float score=0;


  public Bar1(float x, float y, float w, float h) {     
  this.x=x;
  this.y=y;
  this.w=w;
  this.h=h;
  xspeed=2;
    yspeed=5;
   
  }

  void display(){
    fill(255, 0, 0);
    rect(x, y, w, h);
  }

  void Scoreboard(float score) {
    String score1=""+score;
    fill(255,255,255);
    textSize(100);
    text(score1, 100, 100);
  
    println(score);
  }  

  
  void move() {
      if (keyCode==UP){ 
        y-=yspeed;
      }
      if (keyCode==DOWN){
        y+=yspeed;
      }
  }
    void checkBounds(){
    if(y>900){
      y=900;
    }
    if(y<0){
      y=0;
    }
  }
    float getX(){
    return x;
  }
  
  float getY(){
    return y;
  }
  float getW(){
    return w;
  }
  float getH(){
    return h;
  }
  float getscore(){
    return score;
  }
}
