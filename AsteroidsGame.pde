//your variable declarations here
Star[] stars = new Star[150];
Spaceship ship = new Spaceship();
ArrayList<Asteroid> rocks = new ArrayList<Asteroid>();

public void setup() 
{
  size(500, 500);
  for (int i = 0; i < stars.length; i++) {
    stars[i] = new Star();
  }
  for (int i = 0; i < 11; i++) {
    rocks.add(new Asteroid());
  }
}
public void draw() 
{
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
      i--;
    }
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
    ship.setDir(ship.getDir() - 5);
  }
  if (key == 'd') {
    ship.setDir(ship.getDir() + 5);
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
  if(key == 'r') {
    ship.setXspeed(0);
    ship.setYspeed(0);
    ship.setDir(Math.random()*360);
    ship.setX(Math.random()*400+50);
    ship.setY(Math.random()*400+50);
  }
}
