public class Bar1 {
float xspeed;
float yspeed;
  float x;
  float y;
  float w;
  float h;
  Ball b;


  public Bar1(float x, float y, float w, float h) {     
  this.x=x;
  this.y=y;
  this.w=w;
  this.h=h;
  xspeed=2;
    yspeed=5;
    b=new Ball();
   
  }

  void display(){
    fill(255, 0, 0);
    rect(x, y, w, h);
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
    if(y>1000){
      y=700;
    }
    if(y<0){
      y=400;
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
}
