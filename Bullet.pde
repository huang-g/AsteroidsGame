class Bullet extends Floater {
  public Bullet(Spaceship ship) {
    myCenterX = ship.getX();
    myCenterY = ship.getY();
    myPointDirection = ship.getDir();
    myXspeed = ship.getXspeed();
    myYspeed = ship.getYspeed();
    accelerate(5);
    myColor = 255;
  }
  
  public void show() {
    fill(myColor);   
    stroke(myColor);    

    //draw the polygon
    ellipse((float)myCenterX, (float)myCenterY, 10, 10);
  }

  public double getX() { return myCenterX; }
  
  public double getY() { return myCenterY; }
}
