class Spaceship extends Floater {
  Spaceship() {
    //insert coords here
    corners = 8;
    int[] shipX = {16, -7, -3, -12, -6, -12, -3, -7};
    int[] shipY = {0, -10, -5, -7, 0, 7, 5, 10};
    xCorners = shipX;
    yCorners = shipY;
    myCenterX = 250;
    myCenterY = 250;
    myPointDirection = 0;
    myXspeed = 0;
    myYspeed = 0;
    myColor = 255;
  }
  
   public double getDir() {
    return myPointDirection;
  }
  
  public void setDir(double dir) {
    myPointDirection = dir;
  }
  
  public double getSpeed() {
    return Math.sqrt(myXspeed*myXspeed + myYspeed*myYspeed);
  }
  
  public double getXspeed() { return myXspeed; }
  
  public void setXspeed(double x) { myXspeed = x; }
  
  public double getYspeed() { return myYspeed; }  
  
  public void setYspeed(double y) { myYspeed = y; }
  
  public void setXcenter(double x) { myCenterX = x; }
  
  public void setYcenter(double y) { myCenterY = y; }
}
