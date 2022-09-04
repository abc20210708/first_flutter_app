import 'package:flutter/material.dart';

void main() => runApp(MyApp()); //컴파일러에게 시작점을 알려주기위해서 main 함수 불러오기
                                //최상위 함수인 runApp() 불러오기
                                //runApp() 내에 Myapp
                              // 이라는 custom위젯 이름을 매개변수로 넣어주기
class MyApp extends StatelessWidget {  //StatelessWidget으로 Myapp custom 위젯 생성하기
 const MyApp({Key? key}) :super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp( //반환 위젯을 Container 위젯에서
                      // MaterialApp위젯으로 바꿔주기
      title: "Charator card", //위젯 내에서 제목 지정 //앱을 총칭 //최근 사용 앱 목록에서 앱 타이틀
      home: MyCard(),//home에서 MyHomePage로 custom 위젯 이름을 지정해주기
                        //앱이 정상적으로 실행되었을 때 가장 먼저 화면에 보여지는 경로
    );
  }
}

class MyCard extends StatelessWidget {
  const MyCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold( //무언가를 혼자 해낼수 있도록 발판을 만들어주다
      //앱 화면에 다양한 ㅅ요소들 배치하고 그릴 수 있도록 도와주는 빈 도화지
      //없으면 그 어떠한 요소들도 앱 화면에 배치할 수 없음
      appBar: AppBar(
        title: Text("BRANTO"), //앱 화면 앱 바에 출력되는 타이틀
        centerTitle: true, //타이틀을 정중앙으로 옮길 때
        backgroundColor: Colors.redAccent,
        elevation: 0.0,//앱바 떠있는 효과를 없애는
        //높이 수치로 값 지정, 소수점까지 조절가능
      ),
      body:Center(
        child: Column(
            mainAxisAlignment: MainAxisAlignment.center, //Axis 가로축 세로축, 상단 중단 하단
            children: [
              Text("Hello"),
              Text("Hello"),
              Text("Hello"),
            ], //widget []
          ),
      )
    );
  }
}


