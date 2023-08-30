import 'package:flutter/material.dart';

void main() {
  runApp(const App());
}

class App extends StatelessWidget {
  const App({super.key});
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(home: StartPage());
  }
}

class StartPage extends StatefulWidget {
  const StartPage({super.key});
  @override
  State<StatefulWidget> createState() => _StartPage();
}

class _StartPage extends State<StartPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("안녕"),
        ),
        drawer: Drawer(
          child: ListView(
            children: const [
              UserAccountsDrawerHeader(
                ListTile();
                  accountName: const Text("홍길동"),
                  accountEmail: const Text("callor@callor.com"),
                  currentAccountPicture: CircleAvatar(
                    backgroundColor: Colors.white,
                    child: Column(
                      children: [
                        Image.asset("images/main_image.jpg"),
                        const Text("callor"),
                      ],
                    ),
                  )),
            ],
          ),
        ),
        body: const Center(
          child: Text(
            "나의 앱",
            style: TextStyle(
              fontSize: 50,
              fontStyle: FontStyle.italic,
            ),
          ),
        ));
  }
}
