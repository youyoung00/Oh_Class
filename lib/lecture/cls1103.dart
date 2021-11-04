import 'dart:math';

void main() {
  Cleric cleric = Cleric(name: "성직자", hp: 50, mp: 10);
  cleric.hp = cleric.hp - 10;

  print('****공격당함!! 현재 hp는 ${cleric.hp}으로 떨어졌습니다.');
  print(cleric.introduce());

  cleric.selfAid();
  print('\n****selfAid 사용!!');
  print(cleric.introduce());

  cleric.pray(30);
  print('\n****pray 사용!!');
  print(cleric.introduce());
}

class Cleric {
  String name;
  int hp;
  int mp;

  final int maxHp = 50; // 최대 HP
  final int maxMp = 10;

  Cleric({this.name, this.hp, this.mp});

  void selfAid() {
    mp -= 5;
    hp = maxHp;
  }

  int pray(int sec) {

    int maxUpPoint;
    int minUpPoint;

    if(sec >= 3){
      maxUpPoint = sec + 3;
      minUpPoint = sec;
    } else {
      maxUpPoint = sec + 2;
      minUpPoint = 0;
    }

    int UpPoint = minUpPoint + Random().nextInt(maxUpPoint - minUpPoint);
    int finalMp = UpPoint + mp;

    if (finalMp > maxMp) {
      finalMp = maxMp;
    } else {
      finalMp;
    }

    mp = finalMp;
    return mp;
  }

  String introduce() {
    return '현재 $name는 hp: $hp, mp: $mp 입니다.';
  }
}
