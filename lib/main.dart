
import 'package:flutter/material.dart';



void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        theme: ThemeData(
          primarySwatch: Colors.blue
        ),
      home: MyButtons(),
    );
  }
}

class MyButtons extends StatelessWidget {
  const MyButtons({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Buttons"),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextButton(
                 onPressed: (){
                 //print("text button");
                 },
              onLongPress: (){
                print("text button");
              },
                child: Text(
                    "Text Button",
                  style: TextStyle(
                    fontSize: 20.0,
                    color: Colors.red,
                  ),
                ),
              style: TextButton.styleFrom(
                //backgroundColor: Colors.blue,

              ),
            ),
            ElevatedButton(
                onPressed: (){
                    print("Elevated button");
            }, child: Text("Elevated button"),
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.orangeAccent,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10.0)
                ),
                  elevation: 0.0
              ),
            ),
            OutlinedButton(onPressed: () {
              print("Outlined button");
            }, child: Text("Outlined button"),
              style: OutlinedButton.styleFrom(
                backgroundColor: Colors.green,
                side: BorderSide(
                  color: Colors.black87,
                  //width: 2.0
                )
              ),
            ),
            TextButton.icon(onPressed:null,
             icon: Icon(Icons.home,
             size: 30.0,
             color: Colors.black87,
             ),
            label: Text("Go to home"),
              style: TextButton.styleFrom(
                //backgroundColor: Colors.purple
                minimumSize: Size(200, 50),
                onSurface: Colors.pink
              ),
            ),
            ButtonBar(
              alignment: MainAxisAlignment.center,
              buttonPadding: EdgeInsets.all(20),
              children: [
                TextButton(onPressed: () {},
                    child: Text("TextButton"),
                ),
                ElevatedButton(onPressed: (){},
                    child: Text("ElevatedButton"),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
