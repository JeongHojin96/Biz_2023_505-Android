/// flutter 프로젝트를 열었는데 import 에서 오류가 발생한 경우
/// 프로젝트 폴더에서 flutter pub get 실행하기
import 'package:flutter/material.dart';

void main(List<String> args) {
  MyApp app = const MyApp();
  runApp(app);
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      ///생성자 함수
      title: "반갑습니다",
      theme: ThemeData(primaryColor: const Color.fromRGBO(100, 100, 10, 1)),
      home: const StartPage(),
    );
  }
}

class StartPage extends StatefulWidget {
  const StartPage({super.key});

  @override
  State<StartPage> createState() => _StartPage();
}

class _StartPage extends State<StartPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("나의 첫 App"),
      ),
      body: const Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("반가워"),
            Text("반가워"),
            Text("반가워"),
            Text("반가워"),
            Text("반가워"),
            Text("반가워"),
            Text("반가워"),
            Text("반가워"),
            Text("반가워"),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () => {},
        child: const Icon(Icons.email),
      ),
    );
  }
}
