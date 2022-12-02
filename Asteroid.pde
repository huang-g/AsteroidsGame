class Asteroid extends Floater {
  private double rotSpeed;
  
  public Asteroid() {
    rotSpeed = Math.random()*7+5;
    corners = 7;
    int[] aX = {-9, -3, 6, 9, 1, -6, -11};
    int[] aY = {5, 8, 5, -3, -8, -6, -2};
    xCorners = aX;
    yCorners = aY;
    myCenterX = Math.random()*400+50;
    myCenterY = Math.random()*400+50;
    while(myCenterX > 225 && myCenterX < 275) {
      myCenterX = Math.random()*400+50;
    }
    while(myCenterY > 225 && myCenterY < 275) {
      myCenterY = Math.random()*400+50;
    }
    myPointDirection = Math.random()*360;
    myXspeed = 0;
    myYspeed = 0;
    accelerate(Math.random()*2+0.5);
    myColor = 255;
  }
  
  public void move() {
    super.move();
    myPointDirection += rotSpeed;
  }
  
  public double getX() { return myCenterX; }
  
  public double getY() { return myCenterY; }
  
  
}
