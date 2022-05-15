import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

import 'package:redoc/antrian/antrian_model.dart';
import 'package:redoc/beranda.dart';

class AntrianSemua extends StatefulWidget {
  const AntrianSemua({Key? key}) : super(key: key);

  @override
  State<AntrianSemua> createState() => _AntrianSemuaState();
}

class _AntrianSemuaState extends State<AntrianSemua> {
  User? user = FirebaseAuth.instance.currentUser;
  Antrian test = Antrian();
  @override
  void initState() {
    super.initState();

    FirebaseFirestore.instance
        .collection("antriansemua")
        .doc(user!.uid)
        .get()
        .then((value) {
      this.test = Antrian.fromMap(value.data());
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
                Image(image: AssetImage('assets/realtime.png')),
                Text(
                  '${test.jadwal?[0]}',
                  style: TextStyle(
                      fontFamily: 'Poppins',
                      fontSize: 14,
                      color: Color(0xff404040)),
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
                        '',
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
