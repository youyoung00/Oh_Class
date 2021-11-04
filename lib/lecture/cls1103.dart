import 'dart:math';

void main() {

  Cleric cleric = Cleric(name: "유신환", hp: 50, mp: 1);

//   print('''
// 성직자 캐릭터의 이름은 ${cleric.name}입니다.
// 성직자의 HP는 초기치 ${cleric.hp}, 최대 ${cleric.maxHp} 입니다.
// 성직자의 MP는 초기치 ${cleric.mp}, 최대 ${cleric.maxMp} 입니다.''');

  // print("성직자의 hp가 ${cleric.hp - 10}이 되었습니다.");
  // cleric.selfAid();
  // print("selfAid를 사용하였습니다. mp는 ${cleric.mp}입니다");
  // print("selfAid를 사용하였습니다. hp는 ${cleric.hp}입니다");

  // print(cleric.pray(9));
  // for(int i = 0; i < 10; ){
  //   print(cleric.pray(6));
    // print(cleric.pray(i));
  // }

  print("현재 mp는 ${cleric.mp}입니다");
  print(cleric.pray(6));
}

class Cleric {
  String name;
  int hp;
  int mp;

  final int maxHp = 50;   // 최대 HP
  final int maxMp = 10;

  Cleric({this.name, this.hp, this.mp});

  void selfAid() {
    mp -= 5;
    hp = maxHp;
  }

  int pray(int sec) {

    num sec1 = sec / 3;
    int sec1Int = sec1.toInt();

    int UpPoint = 3 + Random().nextInt(6-3);
    int plusMpPoint = UpPoint * sec1Int;
    int finalMp = plusMpPoint + mp;

    if(finalMp > maxMp){
      finalMp = maxMp;
    } else {
      finalMp;
    }

    return finalMp;
  }

  String introduce() {
    return '$hp, $mp';
  }
}
