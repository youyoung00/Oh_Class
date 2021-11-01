void main() {
  List<int> nums = [1, 2, 3, 4, 5,];

  int total = 0;
  for (int i = 0; i < nums.length; i++) {
    if (nums[i] % 2 == 0) { // 짝수
      if (nums[i] % 2 == 1) { // 홀수
        total = total + nums[i];
      }
    }

    print(total);

    nums.add(10);
    nums.remove(3);
    print(nums.add);
  }
}

