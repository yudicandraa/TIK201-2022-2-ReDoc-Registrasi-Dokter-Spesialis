<<<<<<< HEAD
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:redoc/admin/homeAdmin.dart';
import 'package:redoc/login.dart';
import 'package:redoc/admin/signUpAdm.dart';

class LoginAdm extends StatefulWidget {
  const LoginAdm({Key? key}) : super(key: key);

  @override
  State<LoginAdm> createState() => _LoginAdmState();
}

class _LoginAdmState extends State<LoginAdm> {
  final TextEditingController emailController = new TextEditingController();
  final TextEditingController passwordController = new TextEditingController();

  final _auth = FirebaseAuth.instance;

  void signIn(String email, String password) async {
    await _auth
        .signInWithEmailAndPassword(email: email, password: password)
        .then((uid) => {
              Fluttertoast.showToast(msg: "Login Berhasil"),
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const HomeAdmin()),
              )
            })
        .catchError((e) {
      Fluttertoast.showToast(msg: e!.message);
    });
  }

  @override
  Widget build(BuildContext context) {
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
              margin: EdgeInsets.only(bottom: 20),
              alignment: Alignment.topCenter,
              child: Image(image: AssetImage('assets/slmtdatang.png')),
            ),
            Container(
              margin: EdgeInsets.only(top: 30),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Center(
                    child: Container(
                      height: 50,
                      width: 180,
                      margin: EdgeInsets.only(bottom: 30),
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
                      margin: EdgeInsets.only(bottom: 30),
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
              margin: EdgeInsets.only(top: 10),
              child: Text(
                'Login',
                style: TextStyle(fontFamily: 'Poppins', fontSize: 20),
              ),
            ),
            Container(
              //margin: EdgeInsets.only(top: 30),
              child: Text(
                'Sebagai Admin',
                style: TextStyle(fontFamily: 'PoppinsRegular', fontSize: 12),
              ),
            ),
            Container(
              margin: const EdgeInsets.only(top: 20),
              padding: new EdgeInsets.all(20.0),
              child: TextFormField(
                controller: emailController,
                keyboardType: TextInputType.emailAddress,
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
                      fontSize: 14),
                ),
                onSaved: (value) {
                  emailController.text = value!;
                },
              ),
            ),
            Container(
              padding: new EdgeInsets.only(right: 20.0, left: 20, bottom: 20),
              child: TextFormField(
                controller: passwordController,
                onSaved: (value) {
                  passwordController.text = value!;
                },
                keyboardType: TextInputType.visiblePassword,
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
                      onPressed: () {
                        Navigator.push(
                          context,
                          new MaterialPageRoute(
                              builder: (context) => new LoginPage()),
                        );
                      },
                      child: Text(
                        'Login Sebagai Pasien',
                        style: TextStyle(
                            color: Color(0xff000000),
                            fontFamily: 'PoppinsRegular',
                            fontSize: 12),
                      ),
                    )),
                Container(
                    margin: EdgeInsets.only(right: 25),
                    child: TextButton(
                      onPressed: () {},
                      child: Text(
                        'Lupa Kata Sandi?',
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
                        signIn(emailController.text, passwordController.text);
                      },
                      child: Center(
                        child: Text(
                          'Masuk',
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
                  'Belum punya akun?',
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
                          builder: (context) => new DaftarAkunAdm()),
                    );
                  },
                  child: Text(
                    'Daftar Disini',
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
=======
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:redoc/admin/homeAdmin.dart';
import 'package:redoc/login.dart';
import 'package:redoc/admin/signUpAdm.dart';

class LoginAdm extends StatefulWidget {
  const LoginAdm({Key? key}) : super(key: key);

  @override
  State<LoginAdm> createState() => _LoginAdmState();
}

class _LoginAdmState extends State<LoginAdm> {
  final TextEditingController emailController = new TextEditingController();
  final TextEditingController passwordController = new TextEditingController();

  final _auth = FirebaseAuth.instance;

  void signIn(String email, String password) async {
    await _auth
        .signInWithEmailAndPassword(email: email, password: password)
        .then((uid) => {
              Fluttertoast.showToast(msg: "Login Berhasil"),
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const HomeAdmin()),
              )
            })
        .catchError((e) {
      Fluttertoast.showToast(msg: e!.message);
    });
  }

  @override
  Widget build(BuildContext context) {
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
              margin: EdgeInsets.only(bottom: 20),
              alignment: Alignment.topCenter,
              child: Image(image: AssetImage('assets/slmtdatang.png')),
            ),
            Container(
              margin: EdgeInsets.only(top: 30),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Center(
                    child: Container(
                      height: 50,
                      width: 180,
                      margin: EdgeInsets.only(bottom: 30),
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
                      margin: EdgeInsets.only(bottom: 30),
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
              margin: EdgeInsets.only(top: 10),
              child: Text(
                'Login',
                style: TextStyle(fontFamily: 'Poppins', fontSize: 20),
              ),
            ),
            Container(
              //margin: EdgeInsets.only(top: 30),
              child: Text(
                'Sebagai Admin',
                style: TextStyle(fontFamily: 'PoppinsRegular', fontSize: 12),
              ),
            ),
            Container(
              margin: const EdgeInsets.only(top: 20),
              padding: new EdgeInsets.all(20.0),
              child: TextFormField(
                controller: emailController,
                keyboardType: TextInputType.emailAddress,
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
                      fontSize: 14),
                ),
                onSaved: (value) {
                  emailController.text = value!;
                },
              ),
            ),
            Container(
              padding: new EdgeInsets.only(right: 20.0, left: 20, bottom: 20),
              child: TextFormField(
                controller: passwordController,
                onSaved: (value) {
                  passwordController.text = value!;
                },
                keyboardType: TextInputType.visiblePassword,
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
                      onPressed: () {
                        Navigator.push(
                          context,
                          new MaterialPageRoute(
                              builder: (context) => new LoginPage()),
                        );
                      },
                      child: Text(
                        'Login Sebagai Pasien',
                        style: TextStyle(
                            color: Color(0xff000000),
                            fontFamily: 'PoppinsRegular',
                            fontSize: 12),
                      ),
                    )),
                Container(
                    margin: EdgeInsets.only(right: 25),
                    child: TextButton(
                      onPressed: () {},
                      child: Text(
                        'Lupa Kata Sandi?',
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
                        signIn(emailController.text, passwordController.text);
                      },
                      child: Center(
                        child: Text(
                          'Masuk',
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
                  'Belum punya akun?',
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
                          builder: (context) => new DaftarAkunAdm()),
                    );
                  },
                  child: Text(
                    'Daftar Disini',
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
>>>>>>> 1904111010056
