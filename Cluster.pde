public class Cluster
{
    public final static int NUM_STEMS = 7; //number of tendrils per cluster

    public Cluster(int len, int x, int y)
    {
        Tendril tendy0 = new Tendril(len,(Math.random()*2*PI),x,y);
        tendy0.show();
        Tendril tendy1 = new Tendril(len,(Math.random()*2*PI),x,y);
        tendy1.show();
        Tendril tendy2 = new Tendril(len,(Math.random()*2*PI),x,y);
        tendy2.show();
        Tendril tendy3 = new Tendril(len,(Math.random()*2*PI),x,y);
        tendy3.show();
        Tendril tendy4 = new Tendril(len,(Math.random()*2*PI),x,y);
        tendy4.show();
        Tendril tendy5 = new Tendril(len,(Math.random()*2*PI),x,y);
        tendy5.show();
        Tendril tendy6 = new Tendril(len,(Math.random()*2*PI),x,y);
        tendy6.show();
        Tendril tendy7 = new Tendril(len,(Math.random()*2*PI),x,y);
        tendy7.show();
        Tendril tendy8 = new Tendril(len,(Math.random()*2*PI),x,y);
        tendy8.show();
    }
}
