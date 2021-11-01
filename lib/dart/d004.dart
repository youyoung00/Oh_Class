//[출력포멧]
//Hello s_1, s_2, ... , s_n.
//
//[입력]
//Java
//Gino
//
//
//[출력]
//Hello Java, Gino.

void main() {
  exam(["Java", "Gino"]);
  exam([
    "Alice",
    "Bob",
    "Carol",
    "Dave",
    "Ellen",
  ]);

  // exam2(["Java", "Gino"]);
  // exam2([
  //   "Alice",
  //   "Bob",
  //   "Carol",
  //   "Dave",
  //   "Ellen",
  // ]);
}

void exam(List<String> names) {
  String s = 'hello ';

  for (int i = 0; i < names.length; i++) {
    // s = s + names[i];
    s = [s, '',names[i]].join();
    if (i == names.length - 1) {
      //s = s + '.';
      s = [s, '.'].join();
    } else
      // s = s + ', ';
      s = [s, ', '].join();
  }
  print(s);
}

// void exam2(List<String> names) {
//   String s = 'hello ';
//   s += names.join(', ') + '.';
//   print(s);
// }
