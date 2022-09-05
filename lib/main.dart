import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: "Appbar",
        theme: ThemeData(
          primarySwatch: Colors.red
        ),
      home: MyPage(),
    );
  }
}

class MyPage extends StatelessWidget {
  const MyPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Appbar icon menu"),
        centerTitle: true,
        elevation: 0.0,
        leading: IconButton(icon: Icon(Icons.menu), // leading //간단한 위젯이나 아이콘 등을 앱바 타이틀 왼쪽에 위치시키는 기능
          onPressed: () {
            print("menu button is clicked");
          },
        ),
        actions: [
          IconButton(icon: Icon(Icons.shopping_cart),
            onPressed: () {
              print("Shopping button is clicked");
            },
          ),
          IconButton(icon: Icon(Icons.search),
            onPressed: () {
              print("Search button is clicked");
            },
          ),
        ],
      ),
    );
  }
}

