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
  
  public void move() {
  fill(myColor);   
    stroke(myColor);    
    
    pushMatrix();
    //translate the (x,y) center of the ship to the correct position
    translate((float)myCenterX, (float)myCenterY);

    //convert degrees to radians for rotate()     
    float dRadians = (float)(myPointDirection*(Math.PI/180));
    
    //rotate so that the polygon will be drawn in the correct direction
    rotate(dRadians);
    
    //draw the polygon
    ellipse((float)myCenterX, (float)myCenterY, 5, 5);
  }

}
