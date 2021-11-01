void main() {
  // 메인에서만 프린트 사용.
  print(exam(60, 90));
  print(exam(45, 45));
}

int exam(int a, int b) {
   int result = 0;

  // 지지고 볶을 부분
  result = 180 - a - b;
  // ============

  return result;
}
