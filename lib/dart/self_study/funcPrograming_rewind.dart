import 'dart:math';

class Trader {
  String name;
  String city;

  Trader(this.name, this.city);
}

class Transaction {
  Trader trader;
  int year;
  int value;

  Transaction(this.trader, this.year, this.value);
}

final transactions = [
  Transaction(Trader("Brian", "Cambridge"), 2011, 300),
  Transaction(Trader("Raoul", "Cambridge"), 2012, 1000),
  Transaction(Trader("Raoul", "Cambridge"), 2011, 400),
  Transaction(Trader("Mario", "Milan"), 2012, 710),
  Transaction(Trader("Mario", "Milan"), 2012, 700),
  Transaction(Trader("Alan", "Cambridge"), 2012, 950),
];

void main() {
  print("=1번========================================");
  // 1. 2011년에 일어난 모든 트랜잭션을 찾아 값을 값을 오름차순으로 정리하여 이름을 나열하시오(where, sort, forEach, compareTo)
  (transactions.where((Transaction e) => e.year == 2011).toList()
    ..sort((a, b) => a.value.compareTo(b.value)))
      .forEach((e) => print(e.trader.name));

  print("=2번========================================");
  // 2. 거래자가 근무하는 모든 도시를 중복 없이 나열하시오(.map, forEach)
  transactions.map((e) => e.trader.city).toSet().forEach((e) => print(e));

  print("=3번=========================================");
  // 3. 케임브리지에서 근무하는 모든 거래자를 찾아서 이름순으로 정렬하여 나열하시오(where, forEach)
  transactions.map((e) => e.trader.name).toSet().forEach(print);


  print("=4번=========================================");
  // 4. 모든 거래자의 이름을 알파벳순으로 정렬하여 나열하시오(where, sort, compareTo,map, forEach)
  (transactions.where((e) => e.trader.city == 'Cambridge').toList()
    ..sort((a, b) => a.trader.name.compareTo(b.trader.name)))
      .map((e) => e.trader.name)
      .toSet()
      .forEach((e) => print(e));


  print("=5번=========================================");
  // 5. 밀라노에 거래자가 있는가?(any)
  print(transactions.any((e) => e.trader.city == 'Milan'));

  print("=6번=========================================");
  // 6. 케임브리지에 거주하는 거래자의 모든 트랙잭션값을 출력하시오(where, forEach)
  transactions.where((e) => e.trader.city == 'Cambridge').forEach((e) {
    print(e);
  });

  print("=7번=========================================");
  // 7. 전체 트랜잭션 중 최대값을 얼마인가?(map, reduce)
  print(transactions.map((e) => e.value).reduce(max));

  print("=8번=========================================");
  // 8. 전체 트랜잭션 중 최소값은 얼마인가?(map, reduce)
  print(transactions.map((e) => e.value).reduce(min));
}

