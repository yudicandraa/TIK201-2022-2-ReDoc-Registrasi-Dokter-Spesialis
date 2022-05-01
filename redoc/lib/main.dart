import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'login.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
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
      backgroundColor: const Color(0xffffffff),
      body: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const SizedBox(
              height: 364,
              width: 364,
              child: Image(image: AssetImage('assets/logo.png'))),
          const SizedBox(
            height: 150,
          ),
          Center(
            child: Container(
              height: 40,
              width: 180,
              margin: const EdgeInsets.only(bottom: 10),
              //alignment: Alignment(0.0, -1.0),
              child: RaisedButton(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30.0)),
                color: const Color(0xff17B3AC),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const LoginPage()),
                  );
                },
                child: const Center(
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
          ),
          Text(
            'Kepuasan Anda adalah Kebanggaan Kami',
            style: TextStyle(fontFamily: 'PoppinsRegular', fontSize: 12),
          )
        ],
      )),
    );
  }
}
