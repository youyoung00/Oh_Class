void main() {
  Word word = Word('aiueo');

  print(word.isVowel(0)); // true
  print(word.isVowel(1)); // false
  print(word.isVowel(2)); // false
  print(word.isVowel(3)); // false
  print(word.isVowel(4)); // true

}

class Word {
  String letters;

  Word(this.letters);

  // i번째 글자가 모음이면 true // a, i, u, e, o
  bool isVowel(int i) {
    bool result = true;

      if (letters.substring(i, i + 1) == 'a' ||
          letters.substring(i, i + 1) == 'i') {
        result;
      } else if (letters.substring(i, i + 1) == 'u' ||
          letters.substring(i, i + 1) == 'e') {
        result;
      } else if (letters.substring(i, i + 1) == 'o') {
        result;
      } else {
        result = false;
      }

      return result;
  }

  // i번째 글자가 자음이면 true
  bool isConsonant(int i) {
    return false;
  }
}
