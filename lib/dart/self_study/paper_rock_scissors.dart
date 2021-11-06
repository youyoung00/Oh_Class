import 'dart:math';

void main() {
  // Villain villain = Villain();
  // int villainItem = villain.attack();
  // List items = [
  //   RockItem().rock(villainItem),
  //   PaperItem().paper(villainItem),
  //   ScissorsItem().scissors(villainItem)
  // ];
  // print(items[0]);
  // print(items[1]);
  // print(items[2]);

  GameLogic gameLogic = GameLogic();
  print(gameLogic.battle(0));
  print(gameLogic.battle(1));
  print(gameLogic.battle(2));
  print(gameLogic.battle(3));
}

class GameLogic {
  String battle(int userItem) {
    Random random = Random();
    int villainItem = random.nextInt(3);
    String result;
    Map<String, int> itemList = {"가위": 0, "바위": 1, "보": 2};

    if (villainItem == userItem) {
      result = "무승부!";
    } else if (villainItem == itemList["가위"] && userItem == itemList["바위"]) {
      result = "승리!";
    } else if (villainItem == itemList["가위"] && userItem == itemList["보"]) {
      result = "패배!";
    } else if (villainItem == itemList["바위"] && userItem == itemList["보"]) {
      result = "승리!";
    } else if (villainItem == itemList["바위"] && userItem == itemList["가위"]) {
      result = "패배!";
    } else if (villainItem == itemList["보"] && userItem == itemList["바위"]) {
      result = "패배!";
    } else if (villainItem == itemList["보"] && userItem == itemList["가위"]) {
      result = "승리!";
    } else {
      result = "가위, 바위, 보 중 선택하세요";
    }
    return result;
  }
}

// class Villain {
//   Random random = Random();
//
//   int attack() {
//     int villainItem = random.nextInt(3);
//     return villainItem;
//   }
// }
//
// class RockItem {
//   String rock(int vilItem) {
//     int itemNum = 0;
//     String result;
//
//     if (vilItem == itemNum) {
//       result = "선택: 바위 \n결과: 무승부!";
//     } else if (vilItem == 1) {
//       result = "선택: 바위 \n결과: 패배...";
//     } else {
//       result = "선택: 바위 \n결과: 승리!!!";
//     }
//
//     return result;
//   }
// }
//
// class PaperItem {
//   String paper(int vilItem) {
//     int itemNum = 1;
//     String result;
//
//     if (vilItem == itemNum) {
//       result = "선택: 보 \n결과: 무승부!";
//     } else if (vilItem == 2) {
//       result = "선택: 보 \n결과: 패배...";
//     } else {
//       result = "선택: 보 \n결과: 승리!!!";
//     }
//
//     return result;
//   }
// }
//
// class ScissorsItem {
//   String scissors(int vilItem) {
//     int itemNum = 2;
//     String result;
//
//     if (vilItem == itemNum) {
//       result = "선택: 가위 \n결과: 무승부!";
//     } else if (vilItem == 0) {
//       result = "선택: 가위 \n결과: 패배...";
//     } else {
//       result = "선택: 가위 \n결과: 승리!!!";
//     }
//
//     return result;
//   }
// }
