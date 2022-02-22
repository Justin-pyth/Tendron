class Tendril
{
  public final static int SEG_LENGTH = 4; //length of each segment in the tendril
  private float myNumSegments, myX, myY, startX, startY, endX, endY;
  private double myAngle;
 



  /**
   Class constructor
   len is how many segments in this tendril (each a fixed length, 4 is a good start)
   theta is tendril starting angle in radians
   x, y  is the starting (x,y) coordinate
   */
  public Tendril(int len, double theta, int x, int y)
  {
    myX = x;
    myY = y;
    myAngle = theta;
    myNumSegments = len;

  }
  public void show()
  {
    if(myNumSegments >=50){
      stroke(75,0,130);
    } else if (myNumSegments <50 && myNumSegments > 5){
      stroke(221,160,221);
    } else{
      stroke(230,230,250);
    }
    startX = myX;
    startY = myY;
    for (int i = 0; i < myNumSegments; i++) {
      myAngle += (double)(Math.random()*(0.4)-0.2);
      endX = startX + cos((float)myAngle)*SEG_LENGTH;
      endY = startY + sin((float)myAngle)* SEG_LENGTH;
      line(startX, startY, startX = endX, startY = endY);
    }
    if(myNumSegments >= 3){
      Cluster c = new Cluster((int)myNumSegments/7, (int)endX, (int)endY);
    }
  }
}
