void main(List<String> args) {
  /// 변수의 정적할당과 동적할당
  /// 정적할당
  ///   java, c/c++ 언어는 코드를 작성하는 단계에서
  ///     반드시 변수의 type 을 지정해야 한다
  ///
  /// 동적할당
  ///   java 이후에 만들어진 다양한 언어는 코드를 작성하는 단계에서
  ///     변수의 type 을 지정하지 않고, 변수에 값을 할당하는 순간
  ///     변수의 type 이 결정되는 방식을 많이 사용한다
  ///   dart 에서 동적할당 변수를 만들때 : var 키워드를 사용하여 변수를 선언할때
  ///     반드시 값을 지정하여 변수를 초기화 시켜주어야 한다.
  ///     만약 초기에 값이 정해지지 않은 변수가 있다면, late 키워드를 사용하여
  ///     초기화를 연기(미루는) 선언을 해야 한다
  ///     최근 버전에서는 late 를 일부 생략해도 오류가 나지 않는다
  late var num1;
  late var num2;
  num1 = 30;
  num2 = 40;
  print("$num1, $num2");
}
