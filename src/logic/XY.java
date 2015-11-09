package logic;

/**
 * Created by Yevhen on 09.11.2015.
 */
public class XY {
    private double x;
    private double y;

    public XY(double x, double y) {
        this.x = x;
        this.y = y;
    }

    public double getX() {
        return x;
    }

    public void setX(double x) {
        this.x = x;
    }

    public double getY() {
        return y;
    }

    public void setY(double y) {
        this.y = y;
    }

    public String getStrX() {
        return String.format("%5.2f",x);
    }

    public String getStrY() {
        return String.format("%5.3f",y);
    }
}
