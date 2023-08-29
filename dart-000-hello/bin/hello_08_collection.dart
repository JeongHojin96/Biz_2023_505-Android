var nums = [1, 2, 3, 4, 5, 6, 7, 8, 9];
var nations = ["대한민국", "미국", "영국", '독일'];
List<String> names = ["홍길동", "이몽룡", "성춘향"];

void main(List<String> args) {
  nums.add(100);
  nations.add("스위스");
  names.add("임꺽정");
  print(nums);
  print(nations);

  nations.remove("미국");
  print(nations);
  print(names.first);
}
