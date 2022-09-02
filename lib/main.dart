import 'package:flutter/material.dart';

void main() => runApp(Myapp()); //컴파일러에게 시작점을 알려주기위해서 main 함수 불러오기
                                //최상위 함수인 runApp() 불러오기
                                //runApp() 내에 Myapp
                              // 이라는 custom위젯 이름을 매개변수로 넣어주기
class Myapp extends StatelessWidget {  //StatelessWidget으로 Myapp custom 위젯 생성하기

  @override
  Widget build(BuildContext context) {
    return MaterialApp( //반환 위젯을 Container 위젯에서
                      // MaterialApp위젯으로 바꿔주기
      title: "First app", //위젯 내에서 제목 지정
      theme: ThemeData( //MaterialApp 내에서 ThemeData 불러오기
        primarySwatch: Colors.blue //primarySwatch 매개변수 불러오기/
                          //블루 색상 음영 지정 //색상 견본
      ),
      home: MyHomePage(),//home에서 MyHomePage로 custom 위젯 이름을 지정해주기
                        //앱이 정상적으로 실행되었을 때 가장 먼저 화면에 보여지는 경로
    );
  }
}

