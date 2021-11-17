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
  CardSearcher cardSearcher = CardSearcher();
  cardSearcher.inputCards();
}

class CardSearcher {
  List<int> cardList = [];

  void inputCards() {
    List<int> makeCardList() {
      stdout.write('c_');
      int cardNum = int.parse(stdin.readLineSync());
      if (cardList.contains(cardNum) == true) {
        print("같은 숫자가 이미 있습니다. 숫자를 다시 입력해주세요.");
        makeCardList();
      } else if (cardNum > 5) {
        print("5보다 큰 숫자를 입력하였습니다. 숫자를 다시 입력해주세요.");
        makeCardList();
      } else if (cardNum == 0) {
        print("0은 없는 카드숫자입니다. 숫자를 다시 입력해주세요.");
        makeCardList();
      } else {
        cardList.add(cardNum);
      }

      return cardList;
    }

    makeCardList();
    makeCardList();
    makeCardList();
    makeCardList();

    int cardReader() {
      int sum = 0;

      for (int i = 0; i < cardList.length; i++) {
        sum += cardList[i];
      }

      int result = 15 - sum;

      return result;
    }

    int finalResult = cardReader();

    print(finalResult);
  }
}
