void main() {
  introduceOneself();
}

void introduceOneself() {
  String name = '홍길동';
  int age = 20;
  double stature = 190.0;
  String gender = '남';

  print(
    """안녕하세요 제 이름은 $name 입니다.
나이는 $age 입니다.
키는 $stature 입니다.
성별은 $gender 입니다. 
  """,
  );
}
