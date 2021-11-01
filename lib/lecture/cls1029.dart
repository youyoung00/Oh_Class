

void main() {
  print(add(3, 5, ));
  print(add2(3, 5,c: 3, d: 4, e: 5 ));

  print(introduceSelf(name: "오준석", age: 10));
  print(introduceSelf(age: 10,name: "오준석"));
}

String introduceSelf({String name, int age}){
  return '저는 $name이고 $age살입니다';
}

String introduceSelf2({String name, int age}){
  return '저는 $name이고 $age살입니다';
}

// 옵셔널포지셔널 파라미터
int add(int a, int b, [int c = 0, int d, int e]) {
  return a + b + c + d + e;
}

// 네임드 파라미터
int add2(int a, int b, {int c = 0, int d, int e}) {
  return a + b + c + d + e;
}