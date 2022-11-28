//your variable declarations here
Star[] stars = new Star[150];
Spaceship ship = new Spaceship();

public void setup() 
{
  size(500, 500);
  for (int i = 0; i < stars.length; i++) {
    stars[i] = new Star();
  }
  
}
public void draw() 
{
  background(0);
  for (int i = 0; i < stars.length; i++) {
    stars[i].show();
  }
  ship.move();
  ship.show();
}

public void keyPressed() {
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
    ship.setDir(ship.getDir() - 2);
  }
  if (key == 'd') {
    ship.setDir(ship.getDir() + 2);
  }
}

public void keyReleased() {
  if(key == 'w') {
    ship.setXspeed(0);
    ship.setYspeed(0);
  }
  if(key == 's') {
    ship.setXspeed(0);
    ship.setYspeed(0);
  }
}
