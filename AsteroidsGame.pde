//your variable declarations here
Star[] stars = new Star[150];
Spaceship ship = new Spaceship();
ArrayList<Asteroid> rocks = new ArrayList<Asteroid>();
ArrayList<Bullet> shots = new ArrayList<Bullet>();
int score = 0;
int timer = 0;
int health = 5;
boolean gameover = false;

public void setup() {
  size(500, 500);
  for (int i = 0; i < stars.length; i++) {
    stars[i] = new Star();
  }
  for (int i = 0; i < 11; i++) {
    rocks.add(new Asteroid());
  }
  textSize(20);
}

public void draw() {
  if (!gameover) {
    background(0);
    for (int i = 0; i < stars.length; i++) {
      stars[i].show();
    }
    for (int i = 0; i < rocks.size(); i++) {
      rocks.get(i).move();
      rocks.get(i).show();
      float d = dist((float)ship.getX(), (float)ship.getY(), (float)rocks.get(i).getX(), (float)rocks.get(i).getY());
      if(d < 13) {
        rocks.remove(i);
        health--;
        i--;
      }
    }
    for (int i = 0; i < shots.size(); i++) {
      shots.get(i).move();
      shots.get(i).show();
      if(shots.get(i).getX() == 0 || shots.get(i).getX() == 500) {
        shots.remove(i);
        break;
      }
      if(shots.get(i).getY() == 0 || shots.get(i).getY() == 500) {
        shots.remove(i);
        break;
      }
      for (int j = 0; j < rocks.size(); j++) {
        float d = dist((float)shots.get(i).getX(), (float)shots.get(i).getY(), (float)rocks.get(j).getX(), (float)rocks.get(j).getY());
        if(d < 13) {
          rocks.remove(j);
          shots.remove(i);
          score++;
          break;
        }
      }   
    }
    ship.move();
    ship.show();
    
    
    text("Score: " + score, 15, 25);
    text("HP: " + health, 430, 25);
    if(timer == 900){
      rocks.add(new Asteroid());
      timer = 0;
    }
    timer++;
    
    if (health == 0) {
      gameover = true;
    }
  } else {
    //gameover screen
    background(0);
    textSize(50);
    text("Game Over", 210, 150);
    textSize(30);
    text("Score: " + score, 360, 230);
    text("Press r to restart", 20, 370); 
    stroke(255);
    line(0, 375, 340, 375);
    
    
  }
}

public void keyPressed() {
  if(!gameover) {
    if (key == 'w') {
      if(ship.getSpeed() < 3 ) {
        ship.accelerate(3);
      }
    }
    if (key == 's') {
      if(ship.getSpeed() < 3) {
        ship.accelerate(-3);
      }
    }
    if (key == 'a') {
      ship.setDir(ship.getDir() - 5);
    }
    if (key == 'd') {
      ship.setDir(ship.getDir() + 5);
    }
  } else {
    if(key == 'r') {
      gameover = false;
      //reset
      for (int i = 0; i < stars.length; i++) {
        stars[i] = new Star();
      }
      for (int i = 0; i < 11; i++) {
        rocks.add(new Asteroid());
      }
      ship.setX(250);
      ship.setY(250);
      ship.setXspeed(0);
      ship.setYspeed(0);
      ship.setDir(0);
      textSize(20);
      score = 0;
      health = 5;
    }
  }
}

public void keyReleased() {
  if(!gameover) {
    if(key == 'w') {
      ship.setXspeed(0);
      ship.setYspeed(0);
    }
    if(key == 's') {
      ship.setXspeed(0);
      ship.setYspeed(0);
    }
    if(key == 'e') {
      ship.setXspeed(0);
      ship.setYspeed(0);
      ship.setDir(Math.random()*360);
      ship.setX(Math.random()*400+50);
      ship.setY(Math.random()*400+50);
    }
  }
}

public void mouseClicked() {
  if(mouseButton == LEFT) {
    shots.add(new Bullet(ship));
  }
} 
