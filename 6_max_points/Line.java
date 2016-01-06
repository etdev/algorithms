public class Line {
  Point a;
  Point b;
  double m;
  public Line(Point a, Point b){ this.a = a; this.b = b; }
  public boolean isOnLine(Point c){
    //Check if it's identical to one of the original points
    if (!isUnique(c)){ return true; }
    //Check for vertical line
    if (isVertical()){
      return (c.x == a.x);
    }
    else { return (getSlope(a, b) == getSlope(a, c)); }
  }

  public boolean isUnique(Point c){
    return !((c.x == a.x && c.y == a.y) || (c.x == b.x && c.y == b.y) );
  }

  public boolean isVertical(){
    return (a.x == b.x);
  }

  public double getSlope(Point a, Point b){
    double nume = (double)(a.y-b.y);
    double denom = (double)(a.x-b.x);
    return nume/denom;
  }

}
