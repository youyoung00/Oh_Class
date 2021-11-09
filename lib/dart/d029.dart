// 주사위의 한쪽면과 반대쪽 숫자의 합은 반드시 7이 된다. (1, 6) (2, 5) (3, 4)
// 한쪽면이 n일 경우 반대쪽 숫자는?
//
// 3
// 4

// 1
// 6

void main() {
  Dice dice = Dice();
  print(dice.diceNum(3));
  print(dice.diceNum(1));
  print(dice.diceNum(10));
  print(dice.diceNum(0));
}

class Dice {
  String diceNum(int n) {
    int result = 7 - n;
    String finalResult = result.toString();

    if (n >= 7 || n == 0) {
      finalResult = '1~6 사이의 숫자를 입력해주세요';
    }
    return finalResult;
  }
}
