class Tendril
{
  public final static int SEG_LENGTH = 4; //length of each segment in the tendril
  private int myNumSegments, myX, myY;
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
    int startX = myX;
    int startY = myY;
    stroke(10);
    for (int i = 0; i < myNumSegments; i++){
      myAngle += (double)(Math.random()*(0.2)-0.2);
      double endX = startX + Math.cos((double)(myAngle*SEG_LENGTH));
      double endY = startY + Math.sin((double)(myAngle*SEG_LENGTH));
      line((float)startX,(float)startY,(float)endX,(float)endY);
      startX = (int)endX;
      startY = (int)endY;
    }
  }
}
