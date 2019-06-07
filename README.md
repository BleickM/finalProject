# finalProject
Pong by Max Bleick
# Project Title and purpose
Pong
In my version of Pong there is only one paddle. The ball continues to rebound and come back towards the paddle. I also created a scoreboard that counts up when the ball hits the paddle and resets to zero when the ball hits the wall. The ball switches to random colors once the score reaches 5. I also have a bounds checker that keeps the ball from leaving the visible playing area.

### Difficulties or opportunities you encountered along the way.

The toughest part was creating the scoreboard. The scoreboard was extremely difficult to figure out because I could not figure out what class to put it in. It was also difficult trying to figure out how the code will know that the ball hit the paddle and not the wall. This piece of my code took me over two days to figure out.

### Most interesting piece of your code and explanation for what it does.

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
  This code changes the color of my ball when the score reaches 5. When the score is below 5 the ball is red, once it reaches 5 the ball flashes between every color.
  

## Built With

* [Processing](https://processing.org/) - The IDE used

## Authors

Max Bleick

## Acknowledgments

* Dr Reinartz was extremely helpful and supportive as I constantly asked him questions.
* Dr Reinartz also allowed me to look at his Pong code so that I had an example to look at.
