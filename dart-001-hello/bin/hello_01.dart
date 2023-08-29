import 'package:dart_hello/module_01.dart';

void main(List<String> args) {
  var num1 = 30;
  var num2 = 40;
  var korea = "대한민국";
  var nums = [2, 6, 12, 19, 24, 31];
  print(nation(korea));
  var result = addNums(num1, num2);
  print("결과 : $result");
  result = sumNums(nums);
  print("결과 : $result");
}
