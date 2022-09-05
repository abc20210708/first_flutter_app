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
        actions: [
          IconButton(icon: Icon(Icons.shopping_cart),// leading //간단한 위젯이나 아이콘 등을 앱바 타이틀 왼쪽에 위치시키는 기능
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
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            UserAccountsDrawerHeader(
                currentAccountPicture: CircleAvatar(
                  backgroundImage: AssetImage("assets/00.jpg"),
                  backgroundColor: Colors.white,
                ), //현재 사용자 이미지 가져오기
                accountName: Text("BBANTO"), accountEmail: Text("bbanto@bbant.co.kr"),
                onDetailsPressed: () {
                  print("arrow is clicked");
                },
              decoration: BoxDecoration(
                color: Colors.red[200],
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(40.0),
                  bottomRight: Radius.circular(40.0)
                )
              ),
            )
          ],
        ),
      ),
    );
  }
}

