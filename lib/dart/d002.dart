void main() {
  d002(10, 20);
  d002(3, 3);
  d002(5, 20);
}

void d002(int a, int b) {
  if (a < b) {
    print(b);
  } else if (a > b) {
    print(a);
  } else {
    print('eq');
  }
}
