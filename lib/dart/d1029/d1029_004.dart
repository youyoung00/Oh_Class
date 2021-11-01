void main() {
  print(calcTriangleArea(bottom: 10, height: 10));
  print(calcCircleArea(50));
}

double calcTriangleArea({double bottom, double height}) {
  double triangleArea = (bottom * height) / 2;
  return triangleArea;
}

double calcCircleArea(double radius) {
  double radiusArea = radius * radius * 3.14;
  return radiusArea;
}
