import 'dart:math';

void main(List<String> args) {
  List<int> nums = [];

  for (int i = 0; i < 20; i++) {
    var num = Random().nextInt(100) + 1;
    nums.add(num);
  }

  for (var i = 0; i < nums.length; i++) {
    for (var j = 2; j < nums[i]; j++) {
      if (nums[i] % j == 0) break;
    }
  }
}
