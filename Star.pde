class Star {
  private int myX, myY, myC;
  float xOff, yOff;
  public Star() {
    myX = (int)(Math.random() * 500);
    myY = (int)(Math.random() * 500);
    myC = color((int)(Math.random()*35)+215, (int)(Math.random()*35)+215, (int)(Math.random()*35)+215);
    xOff = (float)(Math.random() * 0.4 - 0.2);
    yOff = (float)(Math.random() * 0.4 - 0.2);
  }
  
  public void show() {
    stroke(myC);
    strokeWeight(0.5);
    line(myX - xOff, myY - 3, myX - xOff, myY +3);
    line(myX - 3, myY-yOff, myX +3, myY-yOff);
    noStroke();
    fill(myC);
    ellipse(myX, myY, 3, 3);

  }

}
