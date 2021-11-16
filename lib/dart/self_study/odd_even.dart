// ⭐ 짝수 홀수
// 당신은 회사를 대표하여 2개의 숫자를 골라야 합니다. 두 수가 모두 짝수이면 홀수파(홀수를 좋아하는 사람들의 모임)가 싫어합니다.
// 두 수가 모두 홀수이면 짝수파가 싫어합니다. 당신 은 짝수 하나 홀수 하나를 골라서 모두를 만족시켜야 합니다.
// 입력
// 입력은 다음 형식을 따릅니다
// N M
// 두 개의 정수 N, M을 공백으로 구분하여 입력합니다.
// 입력은 한 줄이며 끝에 줄 바꿈을 포함합니다.
// 출력
// N, M 두 숫자가 짝수와 홀수의 쌍이면 "YES", 그렇지 않으면 "NO"를 출력합니다. 끝에 줄 바꿈을 넣고 불필요한 문자나 빈 행을 포함하지 마십시오
// 입력 예1
// 30 15
// 출력 예1
// YES
// 입력 예2
// 12 40
// 출력 예2
// NO

void main() {
  SelectNum selectNum = SelectNum();
  print(selectNum.oddEvenReader(16, 43));
  print(selectNum.oddEvenReader(15, 44));
  print(selectNum.oddEvenReader(16, 44));
  print(selectNum.oddEvenReader(1, -2));
}

class SelectNum {
  String oddEvenReader(int n, int m) {
    String result = 'YES';

    if (n % 2 == 0 && m % 2 == 1) {
      result;
    } else if (n % 2 == 1 && m % 2 == 0) {
      result;
    } else {
      result = 'NO';
    }

    return result;
  }
}
