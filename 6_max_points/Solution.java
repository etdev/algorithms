import java.util.ArrayList;
public class Solution {

  Point[] points;
  int length;
  int max;

  public int maxPoints(Point[] points) {
    if (points.length <2 ){ return points.length; }
    this.points = points;
    int max = 2;
    length = points.length;
    //For each point except itself
    for (int i=0; i<length; i++){
      for (int j=i+1; j<length; j++){
        ArrayList<Point> currentPoints = new ArrayList<Point>();
        Line currentLine = new Line(points[i], points[j]);
        for (int k=0; k<length; k++){
          if (currentLine.isOnLine(points[k])){ currentPoints.add(points[k]); }
        }
        if (currentPoints.size() > max){ max = currentPoints.size(); }
      }
    }
    return max;
  }

}
