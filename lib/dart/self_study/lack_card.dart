// ⭐ 부족한 카드
// 당신은 1, 2, 3, 4, 5의 숫자가 적힌 5 종류의 카드를 모으고 있습니다.
// 4번째까지 모여서 1장만 더 모으면 되는 상황에 카드가 섞여 버렸습니다.
// 4장의 카드 정보는 줄 바꿈으로 구분하여 입력되므로 1~5의 카드 중 부족한 카드의 숫자를 출력합니다.
//
// 예를 들어 입력 예 1에서는
// 1
// 3
// 2
// 5
//
// 4의 카드가 부족하므로 4를 출력합니다.
// 4
//
// 입력
// 입력은 다음 형식을 따릅니다
// c_1
// c_2
// c_3
// c_4
//
// 입력은 4행이며 입력의 끝에는 개행이 포함됩니다
// 출력
// 4 개의 카드 정보는 줄 바꿈으로 구분하여 입력되므로 1~5의 카드 중 부족한 카드의 숫자를 출력합니다.
// 출력 마지막에 개행을 하나 넣고 불필요한 문자나 빈 행을 포함하지 마십시오.
//
// 입력 예1
// 1
// 3
// 2
// 5
//
// 출력 예1
// 4
//
// 입력 예2
// 4
// 3
// 2
// 1
//
// 출력 예2
// 5

import 'dart:io';

void main() {
  /// cards 리스트 선언
  List<int> cards = [];

  /// 첫번째 카드 숫자 입력받기
  stdout.write('c_');
  int cardNum1 = int.parse(stdin.readLineSync());

  /// 입력 받은 숫자 cards 리스트에 담기
  cards.add(cardNum1);

  /// 2번째 카드 숫자 입력받기
  stdout.write('c_');
  int cardNum2 = int.parse(stdin.readLineSync());
  if (cardNum2 == cards[0] || cardNum2 > 5) {
    print("같은 수, 또는 5보다 큰 수입니다. 프로그램을 재실행 해주세요.");
  } else {
    /// 입력 받은 숫자 cards 리스트에 담기
    cards.add(cardNum2);
  }

  /// 3번째 카드 숫자 입력받기
  stdout.write('c_');
  int cardNum3 = int.parse(stdin.readLineSync());
  if (cardNum3 == cards[0] || cardNum3 == cards[1]) {
    print("이전과 같은 수를 입력하였습니다. 프로그램을 재실행 해주세요.");
  } else if (cardNum3 > 5) {
    print("5보다 큰 수를 입력하였습니다. 프로그램을 재실행 해주세요.");
  } else {
    /// 입력 받은 숫자 cards 리스트에 담기
    cards.add(cardNum3);
  }

  /// 4번째 카드 숫자 입력받기
  stdout.write('c_');
  int cardNum4 = int.parse(stdin.readLineSync());
  if (cardNum4 == cards[0] || cardNum4 == cards[1] || cardNum4 == cards[2]) {
    print("이전과 같은 수를 입력하였습니다. 프로그램을 재실행 해주세요.");
  } else if (cardNum4 > 5) {
    print("5보다 큰 수를 입력하였습니다. 프로그램을 재실행 해주세요.");
  } else {
    /// 입력 받은 숫자 cards 리스트에 담기
    cards.add(cardNum4);
  }

  print(cardReader(cards));
}

int cardReader(List<int> cards) {
  int result;

  int sum = cards[0] + cards[1] + cards[2] + cards[3];
  result = 15 - sum;

  return result;
}
