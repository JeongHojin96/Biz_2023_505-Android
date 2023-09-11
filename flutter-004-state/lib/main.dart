import 'dart:math';

import 'package:flutter/material.dart';
import 'package:state/models/student.dart';

void main() {
  runApp(const App());
}

class App extends StatelessWidget {
  const App({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      debugShowMaterialGrid: false,
      title: "Flutter State",
      theme: ThemeData(primarySwatch: Colors.green),
      home: const HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({super.key});
  @override
  State<StatefulWidget> createState() => StartPage();
}

class StartPage extends State<HomePage> {
  var titles = [
    "가",
    "나",
    "다",
    "라",
    "마",
    "바",
    "사",
  ];

  final studentList = [
    Student(stNum: "001", stName: "테스트 성공했냐?"),
    Student(stNum: "002", stName: "홍길동"),
    Student(stNum: "003", stName: "홍길동"),
    Student(stNum: "004", stName: "홍길동"),
    Student(stNum: "005", stName: "홍길동"),
    Student(stNum: "006", stName: "홍길동"),
    Student(stNum: "007", stName: "홍길동"),
  ];

  ListView appBarBody() => ListView.builder(
        itemCount: titles.length,
        itemBuilder: (context, index) {
          return ListTile(
            title: Material(
              child: InkWell(
                onTap: () {
                  showDialog(
                    context: context,
                    barrierDismissible: true,
                    builder: (BuildContext context) {
                      return AlertDialog(
                        content: Text(studentList[index].stName),
                        insetPadding: const EdgeInsets.fromLTRB(0, 80, 0, 80),
                        actions: [
                          TextButton(
                            child: const Text('닫기'),
                            onPressed: () {
                              Navigator.of(context).pop();
                            },
                          ),
                        ],
                      );
                    },
                  );
                },
                highlightColor:
                    const Color.fromARGB(255, 255, 161, 161).withOpacity(0.5),
                splashColor:
                    const Color.fromARGB(255, 48, 82, 41).withOpacity(0.5),
                child: Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Row(
                    children: [
                      // 이미지 추가
                      const Icon(Icons.person), // 아이콘 이미지 또는 이미지 위젯을 사용
                      const SizedBox(width: 10), // 이미지와 텍스트 간격
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            children: [
                              Text(studentList[index].stNum),
                              const SizedBox(width: 10), // 텍스트 간격 조절
                              Text(studentList[index].stName),
                            ],
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ),
          );
        },
      );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("안녕하세요."),
        centerTitle: true,
        actions: [
          IconButton(
              onPressed: () {
                var rnd = Random().nextDouble();
                setState(() {
                  titles.add(rnd.toString());
                });
              },
              icon: const Icon(
                Icons.add_outlined,
              ))
        ],
      ),
      body: appBarBody(),
    );
  }
}
