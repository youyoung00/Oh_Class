// 당신은 수를 열거하는 프로그램을 만들려고 한다. 그러려면 '자르기 좋은 숫자'를 발견해야 한다.
// '자르기 좋은 숫자'란 다음 규칙을 따른다.
//
// - 모든 숫자가 같아야 함
//
// 판별한 숫자 n 을 입력받아 조건에 맞으면 그 수를 그대로 출력하고
// 조건에 맞지 않으면 No를 출력하시오
//
// 4444
// 4444
//
// 3335
// No

void main() {
  GoodNumCut goodNumCut = GoodNumCut();
  print(goodNumCut.numReader(4445));
  print(goodNumCut.numReader(5555555555555555));
  print(goodNumCut.numReader(42222225));
  print(goodNumCut.numReader(6666666666666666666));
  print(goodNumCut.numReader(444567454));

}

class GoodNumCut {
  String numReader(int n) {

    // 내보낼 결과값 담을 변수
    String result = "No";

    // 숫자를 문자열로 형변환.
    String strN = n.toString();

    // 문자열을 리스트로 형변환.
    List numList = strN.split("");

    // 리스트의 첫번째 숫자를 변수로 대입.
    String firstNum = numList[0];

    // 리스트의 첫번째 요소와 리스트의 전체 요소가 같은지 비교
    for (int i = 0; i < numList.length; i++) {
      if (numList[i] != firstNum) {
        result = "No";
      } else {
        result = strN;
      }
    }

    return result;
  }
}
