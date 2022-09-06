import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: "Snack bar",
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
        title: Text("Snack Bar"),
        centerTitle: true,
      ),
      body: Center(
        //FlatButton 참고 블로그 https://learncom1234.tistory.com/24

        child: TextButton(onPressed: ()
        {
          print("text button");
        },
            child: Text(
              "Show me",
              style: TextStyle(
                color: Colors.white
              ),
            ),
            style: TextButton.styleFrom(
            backgroundColor: Colors.red
        ),
        )
      ),
    );
  }
}

