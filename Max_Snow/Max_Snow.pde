
PImage img;
Snowflake [] sf2=new Snowflake[250];
 import processing.sound.*;
  SoundFile file;
void setup() {
  img=loadImage("Skol.jpg");
  size(800, 400);
       file=new SoundFile(this, "26030.mp3");
   file.play();
  for (int i=0; i<sf2.length; i++) {
 
    sf2[i]=new Snowflake();
 
  }
}

void draw() {
  background(72, 61, 139);
  snowman();
  for (int i=0; i<sf2.length; i++) {
    sf2[i].move();
    sf2[i].show();
    sf2[i].moon();
    house();
      window();
    sf2[i].grow();
    sf2[i].Merry();
  }
  snowman();
  snowman2();
  snowman3();
  snowman4();
  hat();
  image(img, 560, 115, 75, 75);
  tree();
}

public void snowman() {
  fill(255, 255, 255);
  ellipse(200, 370, 150, 150);
  noStroke();
}
public void snowman2() {
  fill(255, 255, 255);
  ellipse(200, 270, 110, 110);
}
public void snowman3() {
  fill(255, 255, 255);
  ellipse(200, 200, 75, 75);
}
public void snowman4() {
  fill(0);
  ellipse(180, 190, 15, 15);
  fill(0);
  ellipse(215, 190, 15, 15);
  fill(0);
  ellipse(198, 215, 50, 10);
}
public void hat() {
  fill(0, 0, 0);
  rect(163, 155, 70, 15);
  fill(0, 0, 0);
  rect(174, 110, 50, 50);
}
public void house() {
  fill(128, 0, 0);
  rect(450, 200, 300, 175);
  fill(160, 82, 45);
  rect(450, 300, 300, 300);
  fill(244, 164, 96);
  triangle(400, 200, 600, 90, 800, 200);
  fill(244, 164, 96);
  rect(575, 300, 50, 100);
}
public void window(){
  fill(255,255,0);
  rect(475, 325,50,50);
  fill(255,255,0);
  rect(675,325,50,50);
}
public void tree(){
  fill(165,42,42);
  rect(350,350,20,75);
  fill(34,139,34);
  rect(295,300,130,50);
  fill(34,139,34);
  rect(310,260,100,40);
  fill(34,139,34);
  rect(323,225,70,40);
  fill(34,139,34);
  rect(343,200,25,25);
  
}

public class Snowflake {
  int x;
  int y;
  int xSpeed;
  int ySpeed;
  int size;
  double grow;
  double moon;
  int red;
  int blue;
  int green;
  boolean lights;  

  public Snowflake() {
    x=(int)(Math.random()*801);
    y=(int)(Math.random()*510)-100;
    xSpeed=(int)(Math.random()*3)-1;
    ySpeed=(int)(Math.random()*3)+1;
    size=(int)(Math.random()*20)+1;
  }

  void show() {
    fill (random(255),random(255), random(255));
    ellipse (x, y, size, size);
  }


  void move() {
    x+=xSpeed;
    y+=ySpeed;
    if (y>=400) {
      y=30;
    }
  }
  void grow() {
    fill(255, 255, 255);
    rect(0, height, width, (float)grow);

    if (grow<-75) { 
      grow=-75;
    } else {
      grow-=.07;
    }
  }  
  void moon() {
    fill(192, 192, 192);
    translate(0, 550);
    ellipse(55, (float)moon, 100, 100);
    translate(0, -550);

    if (moon==-50) {
      moon=100;
    } else {
      moon-=1.5;
    }
  }
  public void Merry() {
    fill((float)(Math.random()*255), (float)(Math.random()*255), (float)(Math.random()*255));
    textSize(38);
    text("Merry Christmas", 450, 250);
  }
}
