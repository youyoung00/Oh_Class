// 5개의 수를 입력받아 최대값, 최소값 출력하기
//
// 입력
// 출력
//
// 9
// 12
// 3
// 6
// 10
//
// 12
// 3
//
// -----------
//
// 1
// 1
// 2
// 2
// 3
//
// 3
// 1

import 'dart:math';

void main() {

  InputInt inputInt = InputInt();
  inputInt.inputFunc(9, 12, 3, 6, 10);
}

class InputInt {
  void inputFunc(int a, int b, int c, int d, int e) {
    List<int> inputList = [a, b, c, d, e];

    print(inputList.reduce(max));
    print(inputList.reduce(min));
  }
}
