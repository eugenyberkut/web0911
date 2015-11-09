package logic;

import java.util.ArrayList;
import java.util.List;
import java.util.stream.IntStream;
import static java.util.stream.Collectors.*;

/**
 * Created by Yevhen on 09.11.2015.
 */
public class Calculator {
    private List<XY> xyList;
//    public Calculator(double start, double finish, double step) {
//        int n = (int) ((finish-start)/step+1);
//        xyList = new ArrayList<>(n);
//        for (int i = 0; i < n; i++) {
//            xyList.add(new XY(start + i*step, f(start + i*step)));
//        }
//    }


    public Calculator(double start, double finish, double step) {
        xyList = IntStream.iterate(0, i->i+1)
                .mapToDouble(i->start+i*step)
                .mapToObj(x->new XY(x,f(x)))
                .limit((long) ((finish-start)/step+1))
                .collect(toList());
    }

    public double f(double x) {
        return Math.sin(x);
    }

    public List<XY> getXyList() {
        return xyList;
    }

    public void setXyList(List<XY> xyList) {
        this.xyList = xyList;
    }
}
