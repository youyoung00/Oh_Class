//정수 m과 n이 주어졌을 때
//m을 n으로 나눈 몫(quotient)과 나머지(remainder)를 출력하라
//
//입력
//출력
//
//10 3
//3 1
//
//12 14
//0 12

void main() {
  Calculator calculator = Calculator();
  print(calculator.resultFunc(10, 3));
  print(calculator.resultFunc(12, 14));
}

class Calculator {
  String resultFunc(int m, int n) {
    int quotient = m ~/ n;
    int remainder = m % n;

    return '$quotient $remainder';
  }
}
