
class Ball {
  float x;
  float y;
  float w;
  float h;
  float xspeed;
  float yspeed;
  float speed=1;
  float xvelocity=.1;
  float yvelocity=.01;

  public Ball(float x, float y, float w, float h) {
    xspeed=1.5;
    yspeed=.7;
    this.x=x;
    this.y=y;
    this.w=w;
    this.h=h;
    

    
  }


  void display() {
    fill(255, 0, 0);
    ellipse(x, y, w, h);
  }

  void move() {
    x+=xspeed;
    if(x>width || x<0){
      xspeed*=-1;
      xvelocity*=-1;
    }
    y+=yspeed;
    xspeed+=xvelocity;
    yspeed+=yvelocity;

    if (x>1400-10) {
      speed*=-1;
    }

    }
      float getX() {
    return x;
  }
  float getY() {
    return y;
  }
  float getW() {
    return w;
  }
  float getH() {
    return h;
  }
   float getWallSpeedX() {
    xspeed*=-1;
    return xspeed;
  }
  
  float getWallSpeedY() {
    yspeed=(float)(Math.random()*5)-3;
    return yspeed;
  }
   float getBallSpeedX() {
    xspeed*=-1;
    x=x-2;
    return xspeed;
  }
  
  float getBallSpeedY() {
    float angle=random(-PI/4, PI/4);
    yspeed=5*sin(angle);;
    return yspeed;
  }
  }
  
