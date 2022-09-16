import 'package:first_flutter_app/config/palette.dart';
import 'package:flutter/material.dart';

class LoginSignUpScreen extends StatefulWidget {
  const LoginSignUpScreen({Key? key}) : super(key: key);

  @override
  State<LoginSignUpScreen> createState() => _LoginSignUpScreenState();
}

class _LoginSignUpScreenState extends State<LoginSignUpScreen> {
  bool isSignUpScreen = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Palette.backgroundColor,
      body: Stack(
        children: [
          Positioned(
            top: 0,
            right: 0,
            left: 0,
            child: Container(
            height: 300,
              decoration: BoxDecoration(
                image: DecorationImage(image: AssetImage("image/red.jpg"),
                  fit: BoxFit.fill
                ),
              ),
              child: Container(
                padding: EdgeInsets.only(top: 90, left: 20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    RichText(
                        text: TextSpan(
                          text: "Welcome",
                          style: TextStyle(
                            letterSpacing: 1.0,
                            fontSize: 25,
                            color: Colors.white
                          ),
                          children: [
                            TextSpan(
                              text: " to Yummy chat!",
                              style: TextStyle(
                                  letterSpacing: 1.0,
                                  fontSize: 25,
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold
                              ),
                            ),
                          ],
                        ),
                    ),
                    SizedBox(
                      height: 5.0,
                    ),
                    Text("Signup to continue",
                      style: TextStyle(
                          letterSpacing: 1.0,
                          color: Colors.white,
                      ),
                    ),
                  ],
                ),
              ),
          ),
          ),
          Positioned(
            top: 180,
            child: Container(
              padding: EdgeInsets.all(20.0),
            height: 280.0,
              width: MediaQuery.of(context).size.width-40,
            margin: EdgeInsets.symmetric(horizontal: 20.0),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(15.0),
              boxShadow: [
                BoxShadow(
                  color: Colors.black.withOpacity(0.3),
                  blurRadius: 15,
                  spreadRadius: 15
                ),
              ],
            ),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      GestureDetector(
                        onTap: (){
                          setState(() {
                            isSignUpScreen = false;
                          });
                        },
                        child: Column(
                          children: [
                            Text("LOGIN",
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                              color: !isSignUpScreen ? Palette.activeColor
                                  : Palette.textColor1
                            ),
                            ),
                            if(!isSignUpScreen)
                            Container(
                              margin: EdgeInsets.only(top: 3),
                              height: 2,
                              width: 55,
                              color: Colors.orange,
                            ),
                          ],
                        ),
                      ),
                      GestureDetector(
                        onTap: (){
                          setState(() {
                            isSignUpScreen = true; //사용자가 메뉴를 선택했다
                          });
                        },
                        child: Column(
                          children: [
                            Text("SIGNUP",
                              style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold,
                                  color: isSignUpScreen ? Palette.activeColor
                                      : Palette.textColor1
                              ),
                            ),
                            if(isSignUpScreen)
                            Container(
                              margin: EdgeInsets.only(top: 3),
                              height: 2,
                              width: 55,
                              color: Colors.orange,
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                  Container(
                    child: Form(
                        child: Column(
                          children: [
                            TextField(
                              decoration: InputDecoration(
                                prefixIcon: Icon(Icons.account_circle,
                                  color: Palette.iconColor,
                                ),
                                enabledBorder: OutlineInputBorder(
                                  borderSide: BorderSide(
                                    color: Palette.textColor1
                                  ),
                                  borderRadius: BorderRadius.all(
                                    Radius.circular((35.0),
                                  )
                                    ,),
                                ),
                                focusedBorder:  OutlineInputBorder(
                                  borderSide: BorderSide(
                                      color: Palette.textColor1
                                  ),
                                  borderRadius: BorderRadius.all(
                                    Radius.circular((35.0),
                                    )
                                    ,),
                                ),
                              ),
                            )
                          ],
                        )
                    ),
                  ),
                ],
              ),
          ),
          ),
        ],
      ),
    );
  }
}
