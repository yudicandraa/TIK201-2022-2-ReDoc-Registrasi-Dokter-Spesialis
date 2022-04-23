import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'login.dart';

void main() async {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: MyHome(), debugShowCheckedModeBanner: false);
  }
}

class MyHome extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffffffff),
      body: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
              height: 364,
              width: 364,
              child: Image(image: AssetImage('assets/logo.png'))),
          SizedBox(
            height: 80,
          ),
          Center(
            child: Container(
              height: 40,
              width: 180,
              margin: EdgeInsets.only(bottom: 25),
              //alignment: Alignment(0.0, -1.0),
              child: RaisedButton(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30.0)),
                color: Color(0xff17B3AC),
                onPressed: () {
                  Navigator.push(
                    context,
                    new MaterialPageRoute(
                        builder: (context) => new SignInPage()),
                  );
                },
                child: Center(
                  child: Text(
                    'Mulai',
                    style: TextStyle(
                        color: Color(0xffffffff),
                        fontSize: 12,
                        fontFamily: 'Poppins'),
                  ),
                ),
              ),
            ),
          )
        ],
      )),
    );
  }
}
