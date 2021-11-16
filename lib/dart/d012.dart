// -100 부터 100까지 중 정수 n이 주어졌을 때 절대값을 구하시오
//
// 입력
// 출력
//
// -10
// 10
//
// -1
// 1
//
// 15
// 15

void main() {
  Absolute absolute = Absolute();
  print(absolute.func(-100));
  print(absolute.func(-1));
  print(absolute.func(15));
  print(absolute.func(-5));
}

class Absolute{
  int num;
  int func(int num) {
    this.num = num;
    return num.abs();
  }
  Absolute({int num});
}