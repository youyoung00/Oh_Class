//거리 n과 그 단위 s를 입력 받아 mm로 변환해 출력하시오
//
//입력되는 거리의 단위는 km, m, cm의 3 종류로, 각각 다음과 같이 변환 할 수 있습니다.
//1km = 1000m
//1m = 100cm
//1cm = 10mm
//
//
//입력
//출력
//
//1 km
//1000000
//
//54 km
//540000000
//
//2 cm
//20
//
//12 m
//12000

void main() {
  print(exam(1, 'km')); // 1000000 // 인자 (argument)
  print(exam(54, 'km')); // 54000000
  print(exam(2, 'cm')); // 20
  print(exam(12, 'm')); // 12000
}


// 매개변수 (parameter)
int exam(int n, String s) {
  int result = 0;

  // 지지고 볶을 부분
  if (s == 'km') {
    result += (n * 1000000);
  } else if (s == 'm') {
    result += (n * 1000);
  } else if (s == 'cm') {
    result += (n * 10);
  }
  // =============
  return result;
}
