import 'package:flutter/material.dart';
import 'package:redoc/login.dart';
import 'beranda.dart';
import 'package:firebase_auth/firebase_auth.dart';

class DaftarAkun extends StatelessWidget {
  const DaftarAkun({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    TextEditingController email = TextEditingController();
    TextEditingController katasandi = TextEditingController();
    return Scaffold(
      body: Container(
          child: Container(
        margin: EdgeInsets.only(top: 10),
        child: Column(
          children: [
            Container(
              alignment: Alignment.topLeft,
              child: Image(image: AssetImage('assets/bolalogin.png')),
            ),
            Container(
              margin: EdgeInsets.only(bottom: 10),
              alignment: Alignment.topCenter,
              child: Image(image: AssetImage('assets/slmtdatang.png')),
            ),
            Container(
              margin: EdgeInsets.only(top: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Center(
                    child: Container(
                      height: 50,
                      width: 180,
                      margin: EdgeInsets.only(bottom: 20),
                      //alignment: Alignment(0.0, -1.0),
                      child: RaisedButton(
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10.0)),
                        color: Color(0xffffffff),
                        onPressed: () {},
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            SizedBox(
                              height: 20,
                              width: 20,
                              child: Image(image: AssetImage('assets/fb.png')),
                            ),
                            SizedBox(
                              width: 30,
                            ),
                            Text(
                              'Facebook',
                              style: TextStyle(
                                  color: Color(0xff000000),
                                  fontSize: 14,
                                  fontFamily: 'Poppins'),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  SizedBox(width: 10),
                  Center(
                    child: Container(
                      height: 50,
                      width: 180,
                      margin: EdgeInsets.only(bottom: 20),
                      //alignment: Alignment(0.0, -1.0),
                      child: RaisedButton(
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10.0)),
                        color: Color(0xffffffff),
                        onPressed: () {},
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            SizedBox(
                              height: 20,
                              width: 20,
                              child:
                                  Image(image: AssetImage('assets/google.png')),
                            ),
                            SizedBox(
                              width: 30,
                            ),
                            Text(
                              'Google',
                              style: TextStyle(
                                  color: Color(0xff000000),
                                  fontSize: 14,
                                  fontFamily: 'Poppins'),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 20),
              child: Image(image: AssetImage('assets/ataudaftardisini.png')),
            ),
            Container(
              margin: const EdgeInsets.only(top: 30),
              padding: new EdgeInsets.only(right: 20.0, left: 20, bottom: 10),
              child: TextFormField(
                decoration: InputDecoration(
                  //fillColor: Color(0xffF1F0F5),
                  //filled: true,
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20),
                    borderSide:
                        BorderSide(color: Color(0xff989898), width: 2.0),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20),
                    borderSide:
                        BorderSide(color: Color(0xff989898), width: 2.0),
                  ),
                  labelText: 'Nama Lengkap',
                  labelStyle: TextStyle(
                      color: Color(0xff989898),
                      fontFamily: 'PoppinsRegular',
                      fontSize: 14),
                ),
              ),
            ),
            Container(
              padding: new EdgeInsets.only(right: 20.0, left: 20, bottom: 10),
              child: TextFormField(
                controller: email,
                decoration: InputDecoration(
                  //fillColor: Color(0xffF1F0F5),
                  //filled: true,
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20),
                    borderSide:
                        BorderSide(color: Color(0xff989898), width: 2.0),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20),
                    borderSide:
                        BorderSide(color: Color(0xff989898), width: 2.0),
                  ),
                  labelText: 'Email',
                  labelStyle: TextStyle(
                      color: Color(0xff989898),
                      fontFamily: 'PoppinsRegular',
                      fontSize: 12),
                ),
              ),
            ),
            Container(
              padding: new EdgeInsets.only(right: 20.0, left: 20, bottom: 10),
              child: TextFormField(
                decoration: InputDecoration(
                  //fillColor: Color(0xffF1F0F5),
                  //filled: true,
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20),
                    borderSide:
                        BorderSide(color: Color(0xff989898), width: 2.0),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20),
                    borderSide:
                        BorderSide(color: Color(0xff989898), width: 2.0),
                  ),
                  labelText: 'Nomor Telepon',
                  labelStyle: TextStyle(
                      color: Color(0xff989898),
                      fontFamily: 'PoppinsRegular',
                      fontSize: 12),
                ),
              ),
            ),
            Container(
              padding: new EdgeInsets.only(right: 20.0, left: 20, bottom: 10),
              child: TextFormField(
                controller: katasandi,
                decoration: InputDecoration(
                  //fillColor: Color(0xffF1F0F5),
                  //filled: true,
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20),
                    borderSide:
                        BorderSide(color: Color(0xff989898), width: 2.0),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20),
                    borderSide:
                        BorderSide(color: Color(0xff989898), width: 2.0),
                  ),
                  labelText: 'Kata Sandi',
                  labelStyle: TextStyle(
                      color: Color(0xff989898),
                      fontFamily: 'PoppinsRegular',
                      fontSize: 12),
                ),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                    margin: EdgeInsets.only(left: 25),
                    child: TextButton(
                      onPressed: () {},
                      child: Text(
                        'Daftar Sebagai Admin',
                        style: TextStyle(
                            color: Color(0xff000000),
                            fontFamily: 'PoppinsRegular',
                            fontSize: 12),
                      ),
                    ))
              ],
            ),
            //Expanded(
            //  child: Container(
            //    height: 100,
            //  ),
            //),
            Container(
                margin: const EdgeInsets.only(top: 40),
                child: Center(
                  child: Container(
                    height: 50,
                    width: 220,
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
                              builder: (context) => new Home()),
                        );
                      },
                      child: Center(
                        child: Text(
                          'Daftar',
                          style: TextStyle(
                              color: Color(0xffffffff),
                              fontSize: 14,
                              fontFamily: 'Poppins'),
                        ),
                      ),
                    ),
                  ),
                )),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Sudah Punya Akun?',
                  style: TextStyle(
                      color: Color(0xff000000),
                      fontFamily: 'PoppinsRegular',
                      fontSize: 11),
                ),
                TextButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      new MaterialPageRoute(
                          builder: (context) => new SignInPage()),
                    );
                  },
                  child: Text(
                    'Login Disini',
                    style: TextStyle(
                        color: Color(0xff000000),
                        fontFamily: 'Poppins',
                        fontSize: 11),
                  ),
                )
              ],
            ),
            Expanded(
              child: Container(
                height: 100,
              ),
            ),

            // Container(
            //   child: Image(
            //    image: AssetImage('assets/buttom.png'),
            //   fit: BoxFit.cover,
            //   ),
            // )
          ],
        ),
      )),
    );
  }
}
