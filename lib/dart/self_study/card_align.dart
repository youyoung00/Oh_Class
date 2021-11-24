// ⭐⭐ 카드 정렬
// 이 놀이는 1에서 9까지의 숫자 카드만 4 장 사용합니다.
// 그러나 이 4 장에서 같은 숫자의 카드가 중복될 수 있습니다. 규칙은 다음과 같습니다.
// 4 장의 카드를 나란히 합니다.
// 왼쪽 두 장, 오른쪽 두 장의 카드를 각각 2 자리의 정수로 보고 합을 계산합니다.
// 모든 조합을 시도하고 합의 최대 값을 구합니다.
// 카드 4 장에 적힌 숫자가 주어지면 최대 점수를 출력합니다.
// 입력 예1의 2, 9, 3, 8의 4 장을 사용하는 경우 다음의 12 가지 결과가 나오게 되고 최대 값은 175입니다.
// 이 카드 4 장의 나열방법을 계산해 보면 4! = 24 가지 존재하지만,
// 덧셈은 순서에 의존하지 않기 때문에 12 가지만을 고려하면 됨에 유의하십시오.
// 예를 들어, 9, 2, 3, 8 순으로 정렬 한 경우의 점수는 92 + 38 = 130 이됩니다.
// 92 + 38 = 130
// 92 + 83 = 175
// 93 + 28 = 121
// 93 + 82 = 175
// 98 + 23 = 121
// 98 + 32 = 130
// 39 + 28 = 67
// 38 + 29 = 67
// 82 + 39 = 121
// 89 + 23 = 112
// 89 + 32 = 121
// 83 + 29 = 112

// 입력
// 입력은 다음 형식으로 제공됩니다.
// a b c d
// ⭐⭐ 카드 정렬 1
// a, b, c, d는 각각 4 개의 카드에 적힌 숫자를 나타내고 공백으로 구분합니다. 입력은 1 행이며 입력 값 마지막 줄의 끝에 개행이 하나 들어갑니다.
// 출력
// 주어진 카드의 최대 점수를 출력합니다.
// 출력의 마지막에 개행을 넣고 불필요한 문자나 빈 행을 포함하지 마십시오.
//
// 입력 예1
// 2 9 3 8
// 출력 예1
// 175
// 입력 예2
// 7 8 7 7
// 출력 예2
// 164

import 'dart:io';

void main() {
  Card card = Card();
  int a = card.inputNumCheck();
  int b = card.inputNumCheck();
  int c = card.inputNumCheck();
  int d = card.inputNumCheck();

  print(card.sumCard(a, b, c, d));
}

class Card {
  int inputNumCheck() {
    int num = int.parse(stdin.readLineSync());
    String resultMsg = "입력 되었습니다";
    int result = 0;

    if (num <= 9 && num != 0) {
      print(resultMsg);
      result = num;
    } else {
      print(resultMsg = "1~9 사이의 숫자로 다시 입력하세요.");
      result = inputNumCheck();
    }
    return result;
  }

  int sumCard(int a, int b, int c, int d) {
    String A = a.toString();
    String B = b.toString();
    String C = c.toString();
    String D = d.toString();

    List<String> cards = [A, B, C, D];
    cards.sort();
    String leftCard = cards[3] + cards[1];
    String rightCard = cards[2] + cards[0];
    int result = int.parse(leftCard) + int.parse(rightCard);

    return result;
  }
}
