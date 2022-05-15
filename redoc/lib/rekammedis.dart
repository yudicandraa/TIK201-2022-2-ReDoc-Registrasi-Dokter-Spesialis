<<<<<<< HEAD
import 'dart:ui';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:redoc/beranda.dart';
import 'package:redoc/pilihdokter.dart';
import 'package:redoc/user_model.dart';

class RekamMedis extends StatefulWidget {
  const RekamMedis({Key? key}) : super(key: key);

  @override
  State<RekamMedis> createState() => _RekamMedisState();
}

class _RekamMedisState extends State<RekamMedis> {
  User? user = FirebaseAuth.instance.currentUser;
  UserModel loginUser = UserModel();

  @override
  void initState() {
    super.initState();

    FirebaseFirestore.instance
        .collection("users")
        .doc(user!.uid)
        .get()
        .then((value) {
      this.loginUser = UserModel.fromMap(value.data());
      setState(() {});
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffffffff),
      body: Container(
        child: Column(
          children: [
            Container(
              margin: const EdgeInsets.all(20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  SizedBox(
                    height: 60,
                    width: 60,
                    child: IconButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          new MaterialPageRoute(
                              builder: (context) => new Home()),
                        );
                      },
                      icon: Image(image: AssetImage('assets/backbutton.png')),
                    ),
                  ),
                  SizedBox(
                    height: 70,
                    width: 70,
                    child: Image(image: AssetImage('assets/logo.png')),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 30,
            ),
            Column(
              children: [
                Image(image: AssetImage('assets/textRM.png')),
                Text(
                  'No Rekam Medis : ${loginUser.rekamMedis}',
                  style: TextStyle(
                      fontFamily: 'PoppinsRegular',
                      fontSize: 14,
                      color: Color(0xff000000)),
                ),
                SizedBox(
                  height: 50,
                ),
                SizedBox(
                  height: 20,
                ),
                Stack(
                  children: [
                    Container(
                      alignment: Alignment.center,
                      child: Image(image: AssetImage('assets/diagnosa.png')),
                    ),
                    Container(
                      alignment: Alignment.center,
                      margin: EdgeInsets.only(top: 40),
                      child: Text(
                        '${loginUser.dataRM}',
                        style: TextStyle(
                            fontFamily: 'PoppinsRegular',
                            fontSize: 13,
                            color: Color(0xff35858B)),
                      ),
                    )
                  ],
                ),
                Container(
                  margin: const EdgeInsets.only(top: 10),
                  child: SizedBox(
                    height: 100,
                    width: 150,
                    child: IconButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          new MaterialPageRoute(
                              builder: (context) => new Home()),
                        );
                      },
                      icon:
                          Image(image: AssetImage('assets/tombolberanda.png')),
                      iconSize: 150,
                    ),
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
=======
import 'dart:ui';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:redoc/beranda.dart';
import 'package:redoc/pilihdokter.dart';
import 'package:redoc/user_model.dart';

class RekamMedis extends StatefulWidget {
  const RekamMedis({Key? key}) : super(key: key);

  @override
  State<RekamMedis> createState() => _RekamMedisState();
}

class _RekamMedisState extends State<RekamMedis> {
  User? user = FirebaseAuth.instance.currentUser;
  UserModel loginUser = UserModel();

  @override
  void initState() {
    super.initState();

    FirebaseFirestore.instance
        .collection("users")
        .doc(user!.uid)
        .get()
        .then((value) {
      this.loginUser = UserModel.fromMap(value.data());
      setState(() {});
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffffffff),
      body: Container(
        child: Column(
          children: [
            Container(
              margin: const EdgeInsets.all(20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  SizedBox(
                    height: 60,
                    width: 60,
                    child: IconButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          new MaterialPageRoute(
                              builder: (context) => new Home()),
                        );
                      },
                      icon: Image(image: AssetImage('assets/backbutton.png')),
                    ),
                  ),
                  SizedBox(
                    height: 70,
                    width: 70,
                    child: Image(image: AssetImage('assets/logo.png')),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 30,
            ),
            Column(
              children: [
                Image(image: AssetImage('assets/textRM.png')),
                Text(
                  'No Rekam Medis : ${loginUser.rekamMedis}',
                  style: TextStyle(
                      fontFamily: 'PoppinsRegular',
                      fontSize: 14,
                      color: Color(0xff000000)),
                ),
                SizedBox(
                  height: 50,
                ),
                SizedBox(
                  height: 20,
                ),
                Stack(
                  children: [
                    Container(
                      alignment: Alignment.center,
                      child: Image(image: AssetImage('assets/diagnosa.png')),
                    ),
                    Container(
                      alignment: Alignment.center,
                      margin: EdgeInsets.only(top: 40),
                      child: Text(
                        '${loginUser.dataRM}',
                        style: TextStyle(
                            fontFamily: 'PoppinsRegular',
                            fontSize: 13,
                            color: Color(0xff35858B)),
                      ),
                    )
                  ],
                ),
                Container(
                  margin: const EdgeInsets.only(top: 10),
                  child: SizedBox(
                    height: 100,
                    width: 150,
                    child: IconButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          new MaterialPageRoute(
                              builder: (context) => new Home()),
                        );
                      },
                      icon:
                          Image(image: AssetImage('assets/tombolberanda.png')),
                      iconSize: 150,
                    ),
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
>>>>>>> 1904111010056
