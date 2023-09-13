import 'package:book/api/naver_open_api.dart';
import 'package:book/models/naver_book_dto.dart';
import 'package:flutter/material.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: ViewBooksPage(),
    );
  }
}

class ViewBooksPage extends StatefulWidget {
  ViewBooksPage({super.key});

  final searchInputController = TextEditingController();

  @override
  State<ViewBooksPage> createState() => _ViewBooksPageState();
}

class _ViewBooksPageState extends State<ViewBooksPage> {
  Future<List<NaverBookDto>>? resultBooks = NaverOpenAPI().loadBooks();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Row(
          mainAxisSize: MainAxisSize.max,
          children: [
            Flexible(
              child: TextField(
                keyboardType: TextInputType.text,
                textInputAction: TextInputAction.search,
                onSubmitted: (value) {},
                decoration: const InputDecoration(
                    labelText: "검색어",
                    border: OutlineInputBorder(),
                    hintText: "검색어 입력"),
              ),
            ),
          ],
        ),
      ),
      body: ViewListPage(resultBooks: resultBooks),
    );
  }
}

class ViewListPage extends StatelessWidget {
  const ViewListPage({
    super.key,
    required this.resultBooks,
  });

  final Future<List<NaverBookDto>>? resultBooks;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: FutureBuilder(
        future: resultBooks,
        builder: (context, snapshot) {
          return ListView.builder(
            itemCount: snapshot.data!.length,
            itemBuilder: (context, index) => ListTile(
              leading: CircleAvatar(
                // child: Image.network(snapshot.data![index].image!),
                backgroundImage: NetworkImage(snapshot.data![index].image!),
              ),
              title: Text(snapshot.data![index].title!),
              subtitle: Text(snapshot.data![index].author!),
            ),
          );
        },
      ),
    );
  }
}
