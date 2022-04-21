import 'package:flutter/material.dart';
import 'package:redoc/login.dart';

class Akun extends StatelessWidget {
  const Akun({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      child: Row(mainAxisAlignment: MainAxisAlignment.center, children: [
        Container(
          child: Column(
            children: [
              Container(
                margin: EdgeInsets.only(bottom: 70),
                child: Image(image: AssetImage('assets/atasakun.png')),
              ),
              SizedBox(
                height: 200,
                width: 200,
                child: IconButton(
                  onPressed: () {},
                  icon: Image(image: AssetImage('assets/qrcode.png')),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                  margin: const EdgeInsets.only(top: 40),
                  child: Center(
                    child: Container(
                      height: 35,
                      width: 150,
                      margin: EdgeInsets.only(bottom: 10),
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
                            'Keluar',
                            style: TextStyle(
                                color: Color(0xffffffff),
                                fontSize: 12,
                                fontFamily: 'Poppins'),
                          ),
                        ),
                      ),
                    ),
                  )),
            ],
          ),
        )
      ]),
    ));
  }
}
