
class Ball {
  float x;
  float y;
  float w;
  float h;
  float xspeed=3;
  float yspeed=1;
  float xvelocity=.5;
  float yvelocity=.01;
  float angle=1;
  float Scoreboard;
   int score=0;

  public Ball() {
  }

  public Ball(float x, float y, float w, float h) {

    this.x=x;
    this.y=y;
    this.w=w;
    this.h=h;
    xspeed=3;
    //yspeed=1;
  }


  void display() {
    if (score<5){
    fill(255, 0, 0);
    ellipse(x, y, w, h);
    }
    if (score>=5){
      fill((float)Math.random()*256, (float)Math.random()*256, (float)Math.random()*256);
      ellipse(x,y,w,h);
    }
  }
  void move() {
    xspeed+=xvelocity;
    yspeed+=yvelocity;
    x+=xspeed;
    y+=yspeed;
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
    yspeed=5*sin(angle);
    ;
    return yspeed;
  }
  void Scoreboard(int score) {
   int score1=score;
    fill(255, 255, 255);
    textSize(100);
    text(score1, 100,100);
    if (b.getX()>500 && b.getX()<1395) {
      println(score1); 
    }
  } 
  int getScore() {
    return score;
  }
  
}
