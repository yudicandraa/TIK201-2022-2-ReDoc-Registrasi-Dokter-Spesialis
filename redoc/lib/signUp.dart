import 'dart:math';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:redoc/login.dart';

import 'package:fluttertoast/fluttertoast.dart';
import 'package:redoc/admin/signUpAdm.dart';
import 'package:redoc/user_model.dart';
import 'beranda.dart';

class DaftarAkun extends StatefulWidget {
  const DaftarAkun({Key? key}) : super(key: key);

  @override
  State<DaftarAkun> createState() => _DaftarAkunState();
}

class _DaftarAkunState extends State<DaftarAkun> {
  final TextEditingController email = TextEditingController();
  final TextEditingController katasandi = TextEditingController();
  final TextEditingController namaLengkap = TextEditingController();
  final TextEditingController noHp = TextEditingController();

  final _auth = FirebaseAuth.instance;
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
              margin: EdgeInsets.only(top: 10),
              child: Text(
                'Daftar',
                style: TextStyle(fontFamily: 'Poppins', fontSize: 20),
              ),
            ),
            Container(
              //margin: EdgeInsets.only(top: 30),
              child: Text(
                'Sebagai Pasien',
                style: TextStyle(fontFamily: 'PoppinsRegular', fontSize: 14),
              ),
            ),
            Container(
              margin: const EdgeInsets.only(top: 30),
              padding: new EdgeInsets.only(right: 20.0, left: 20, bottom: 10),
              child: TextFormField(
                controller: namaLengkap,
                onSaved: (value) {
                  namaLengkap.text = value!;
                },
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
                onSaved: (value) {
                  email.text = value!;
                },
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
                controller: noHp,
                onSaved: (value) {
                  noHp.text = value!;
                },
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
                onSaved: (value) {
                  katasandi.text = value!;
                },
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
                              builder: (context) => new DaftarAkunAdm()),
                        );
                      },
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
                        signUp(email.text, katasandi.text);
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
                          builder: (context) => new LoginPage()),
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

  void signUp(String email, String password) async {
    await _auth
        .createUserWithEmailAndPassword(email: email, password: password)
        .then((value) => {postDetailsToFirestore()})
        .catchError((e) {
      Fluttertoast.showToast(msg: e!.message);
    });
  }

  postDetailsToFirestore() async {
    FirebaseFirestore firebaseFirestore = FirebaseFirestore.instance;
    User? user = _auth.currentUser;

    UserModel userModel = UserModel();
    final noRM = Random().nextInt(100000);
    String noRekamMedis = "000" + noRM.toString();
    userModel.email = user!.email;
    userModel.uid = user.uid;
    userModel.namaLengkap = namaLengkap.text;
    userModel.noHp = noHp.text;
    userModel.rekamMedis = noRekamMedis;

    await firebaseFirestore
        .collection("users")
        .doc(user.uid)
        .set(userModel.toMap());

    Fluttertoast.showToast(msg: "Pendaftaran Berhasil");
    Navigator.pushAndRemoveUntil(
        (context),
        MaterialPageRoute(builder: (context) => const LoginPage()),
        (route) => false);
  }
}
