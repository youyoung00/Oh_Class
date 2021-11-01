

void main(){
  // 변수1 정수 출력
  print(integer);

  // 변수2 소수 출력
  print(dbl);

  // 변수3 문자열 출력
  print(str);

  // 변수4 리스트 출력
  print(dList);

  // 변수5 맵 출력
  print(dMap);

  // 변수6 함수 출력
  int fcInt = func();
  print(fcInt);

  // 변수7 클래스 출력
  Cls cls = Cls();
  print(cls);
  print('이 클래스에는 ${cls.s}, ${cls.d}, ${cls.classFunc()} 등이 있습니다. ');
}


// 변수1 : int(num 안에 double 과 동위로 포함. 원시값)
int integer = 1;

// 변수2 : double(num 안에 double 과 동위로 포함. 원시값)
double dbl = 1.0;

// 변수3 : String(객체참조형값)
String str = '문자열';

// 변수4 : List(여러개의 변수를 "순서"를 가지고 따라 담을 수 있음. 객체참조형값)
List<dynamic> dList = ['인덱스1', integer, dbl, str];

// 변수5 : Map(키 : 값의 구조로 여러 값을 담음. '키'를 통하여 '값'에 접근할 수 있음. 객체참조형값)
Map<dynamic,dynamic> dMap = {'문자열' : str, '리스트' : dList, '더블' : dbl, '인티저' : integer};

// 변수6 : function(함수의 리턴값과 같은 타입의 변수를 선언하여 함수호출부로 대입할 수 있음. )
int func(){
  int funcInt = 123456;
  return funcInt;
}

// 변수7 : class
class Cls{
  int i = 1;
  double d = 1.0;
  String s = '문자';
  List l = [];
  Map m = {'map': '맵'};
  String classFunc(){
    String funcTxt = "클래스안에서 태어난 메소드";
    return funcTxt;
  }
}







