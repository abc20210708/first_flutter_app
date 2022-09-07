import 'package:flutter/material.dart';


void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: "Snack bar",
        theme: ThemeData(
          primarySwatch: Colors.blue
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
       backgroundColor: Colors.blue,
      body: SafeArea(
        child: Container( //Container는 오직 하나만의 child를 갖는다
          color: Colors.red,
          child: Text("Hello"),
          width: 100,
          height: 100,
          margin: EdgeInsets.symmetric(
            vertical: 50, //세로축
            horizontal: 10 , //가로축
          ),
          padding: EdgeInsets.all(40),//상하좌우 20씩
        ),
      ),
     );
  }
}

