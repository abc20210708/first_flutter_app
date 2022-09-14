import 'package:first_flutter_app/ScreenB.dart';
import 'package:first_flutter_app/ScreenC.dart';
import 'package:flutter/material.dart';
import 'package:first_flutter_app/ScreenA.dart';


void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        initialRoute: "/",
        routes: {
          "/": (context) => ScreenA(),
          "/b" : (context) => ScreenB(),
          "/c" : (context) => ScreenC()
        },
    );
  }
}

