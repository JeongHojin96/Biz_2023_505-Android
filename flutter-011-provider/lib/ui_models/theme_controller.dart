import 'package:flutter/material.dart';

/// flutter dart 에서 클래스(인터페이스)를 상속받을때
/// extends : 일반적인 class를 상속 받을때
/// mixin : 한개의 class 와 두개 이상의 interface를 동시에 상속받을때
/// with : 현재는 한개의 클래스를 상속받지만, ChangeNotifier 가
/// 자체적으로 상속받았던 클래스, 인터페이스를 모두 상속 받기
///
class ThemeController with ChangeNotifier {
  /// ThemeMode 클래스를 사용한 객체 선언
  /// flutter 에서 meterial3 의 theme를 쉽게 변경할수 있도록
  /// 미리 준비해둔 클래스
  late ThemeMode _themeMode; // private 변수
  ThemeMode get themeMode =>
      _themeMode; // private 변수를 외부에서 참조할수 있는 getter 함수 선언

  Future<void> initSystemTheme() async {
    _themeMode = ThemeMode.system;
    notifyListeners();
  }

  Future<void> updateThemeMode(ThemeMode? newThemeMode) async {
    if (newThemeMode != null && _themeMode != newThemeMode) {
      _themeMode = newThemeMode;
    } else {
      return;
    }
    notifyListeners();
  }
}
