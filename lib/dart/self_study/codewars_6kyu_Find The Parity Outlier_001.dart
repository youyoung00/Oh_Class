// 정수를 포함하는 배열(길이가 3 이상이지만 매우 클 수 있음)이 제공됩니다.
// 배열은 완전히 홀수 정수로 구성되거나 단일 정수를 제외하고 완전히 짝수 정수로 구성 N됩니다.
// 배열을 인수로 사용하고 이 "이상치"를 반환하는 메서드를 작성하십시오 N.

// 예
// [2, 4, 0, 100, 4, 11, 2602, 36]
// Should return: 11 (the only odd number)
//
// [160, 3, 1719, 19, 11, 13, -21]
// Should return: 160 (the only even number)

import 'dart:io';

void main() {
  // test('Example test 1', () { expect(find([99,77,331,717,89,22073,8,7,101]), equals(8)); });
  // test('Example test 2', () { expect(find([2254,29,98427000020]), equals(29)); });
  print(find([2, 4, 0, 100, 4, 11, 2602, 36]));
  print(find([160, 3, 1719, 19, 11, 13, -21]));
}

int find(List integers) {
  List<int> oddList = [];
  List<int> evenList = [];
  int result = 0;

  for (int i = 0; i < integers.length; i++) {
    if (integers[i].isEven == true) {
      evenList.add(integers[i]);
    } else if (integers[i].isEven == false) {
      oddList.add(integers[i]);
    }
  }

  if(oddList.length < evenList.length){
    result = oddList[0];
  } else {
    result = evenList[0];
  }
  return result;

  // Best Code
  // return integers.firstWhere(
  //     integers.getRange(0, 3).where((i) => i % 2 == 0).length > 1
  //         ? (i) => i % 2 == 1
  //         : (i) => i % 2 == 0
  // );
}
