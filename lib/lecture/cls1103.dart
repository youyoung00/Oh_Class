import 'dart:math';

void main() {
  Cleric cleric = Cleric(name: "유신환", hp: 50, mp: 1);

  print("현재 mp는 ${cleric.mp}입니다");
  print("pray 사용!! 현재 mp는 ${cleric.pray(3)}입니다");
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
    num sec1 = sec / 3;
    int sec1Int = sec1.toInt();

    int UpPoint = 3 + Random().nextInt(6 - 3);
    int plusMpPoint = UpPoint * sec1Int;
    int finalMp = plusMpPoint + mp;

    if (finalMp > maxMp) {
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
