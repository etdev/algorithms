public class SolutionClient{

  public static void main(String[] args){
    Point testA = new Point(2, 2);
    Point testB = new Point(3, 3);
    Point testC = new Point(4, 4);
    Point testD = new Point(-3, -1);
    Point testE = new Point(-3, -3);
    Line l = new Line(testA, testB);
    System.out.println("Making line from points (2,2) and (3,3)");
    System.out.println("isVertical: " + l.isVertical() + ", isUnique(2, 2): " + l.isUnique(testA) + ", isUnique(3, 4): " + l.isUnique(new Point(3, 4)) + ", isOnLine(4, 4): " + l.isOnLine(testC) + ", isOnLine(-3, -1): " + l.isOnLine(testD) + ", isOnLine(-3,-3): " + l.isOnLine(testE));

    testA = new Point(1, 1);
    testB = new Point(1, 1);
    testC = new Point(2, 2);
    testD = new Point(2, 2);
    testE = new Point(2, -3);
    l = new Line(testA, testB);
    System.out.println("Making line from points (2,2) and (3,3)");
    System.out.println("isVertical: " + l.isVertical() + ", isUnique(2, 2): " + l.isUnique(testA) + ", isUnique(3, 4): " + l.isUnique(new Point(3, 4)) + ", isOnLine(2, 4): " + l.isOnLine(testC) + ", isOnLine(-3, -1): " + l.isOnLine(testD) + ", isOnLine(2,-3): " + l.isOnLine(testE));

    Point[] points = {testA, testB, testC, testD};
    Solution s = new Solution();
    int result = s.maxPoints(points);
    System.out.println("Result: " + result);

  }
}
