void main() {
  Cleric cleric = Cleric(name: "유신환");
  print('''
성직자 캐릭터의 이름은 ${cleric.name}입니다.
성직자의 HP는 초기치 ${cleric.hp}, 최대 ${cleric.maxHp} 입니다.
성직자의 MP는 초기치 ${cleric.mp}, 최대 ${cleric.maxMp} 입니다.''');
}

class Cleric {
  String name;
  int hp;
  int mp;
  final int maxHp = 50;
  final int maxMp = 10;

  Cleric({this.name, this.hp = 50, this.mp = 10});

  void selfAid() {

  }
}


