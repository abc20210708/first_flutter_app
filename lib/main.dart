import 'package:firebase_core/firebase_core.dart';
import 'package:first_flutter_app/screens/main_screen.dart';
import 'package:flutter/material.dart';


// void main() {
//   runApp(MyApp());
// }

void main() async {
  await Firebase.initializeApp();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Chatting app",
      theme: ThemeData(
        primarySwatch: Colors.blue
      ),
      home: LoginSignUpScreen(),
    );
  }
}

