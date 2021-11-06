//다음과 같이 A~Z 까지 알파벳 대문자 중에서 한 문자 s를 입력받습니다.
//ABCDEFGHIJKLMNOPQRSTUVWXYZ
//
//A를 1번째로 하면 C는 3번째입니다.
//입력받은 문자가 몇 번째 문자인지 출력하시오
//
//입력
//출력
//
//C
//3
//
//X
//24

void main() {
  AlphabetNum alphabetNum = AlphabetNum();
  print(alphabetNum.counter('C'));
  print(alphabetNum.counter('X'));
  print(alphabetNum.counter('A'));
  print(alphabetNum.counter('F'));
  print(alphabetNum.counter('G'));
  print(alphabetNum.counter('Y'));
}

class AlphabetNum {
  Map<String, int> alphabets = {
    'A': 1,
    'B': 2,
    'C': 3,
    'D': 4,
    'E': 5,
    'F': 6,
    'G': 7,
    'H': 8,
    'I': 9,
    'J': 10,
    'K': 11,
    'L': 12,
    'M': 13,
    'N': 14,
    'O': 15,
    'P': 16,
    'Q': 17,
    'R': 18,
    'S': 19,
    'T': 20,
    'U': 21,
    'V': 22,
    'W': 23,
    'X': 24,
    'Y': 25,
    'Z': 26
  };

  int counter(String a) {
    return alphabets[a];
  }
}
