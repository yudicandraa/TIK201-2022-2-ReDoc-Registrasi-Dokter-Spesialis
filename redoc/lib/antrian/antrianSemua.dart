import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

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
      print(test);
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
                SizedBox(
                  height: 50,
                ),
                Text(
                  '${test.namadokter}',
                  style: TextStyle(
                      fontFamily: 'Poppins',
                      fontSize: 18,
                      color: Color(0xff404040)),
                ),
                SizedBox(
                  height: 5,
                ),
                SizedBox(
                  width: 200,
                  child: Image(image: AssetImage('assets/line.png')),
                ),
                Text(
                  '${test.jadwal?[0]}, ${test.jadwal?[1]}',
                  style: TextStyle(
                      fontFamily: 'PoppinsRegular',
                      fontSize: 16,
                      color: Color(0xff404040)),
                ),
                SizedBox(
                  height: 50,
                ),
                Stack(
                  children: [
                    Container(
                      alignment: Alignment.center,
                      child: Image(image: AssetImage('assets/kotak.png')),
                    ),
                    Row(
                      children: [
                        Container(
                          alignment: Alignment.topLeft,
                          margin: EdgeInsets.only(top: 30, left: 53),
                          child: Text(
                            '${test.nomorantrian}',
                            style: TextStyle(
                                fontFamily: 'PoppinsRegular',
                                fontSize: 20,
                                color: Color(0xff000000)),
                          ),
                        ),
                        Container(
                          alignment: Alignment.topLeft,
                          margin: EdgeInsets.only(top: 25, left: 53),
                          child: Text(
                            '${test.status}',
                            style: TextStyle(
                                fontFamily: 'PoppinsRegular',
                                fontSize: 16,
                                color: Color(0xff000000)),
                          ),
                        ),
                      ],
                    )
                  ],
                ),
                SizedBox(
                  width: 150,
                  child: Container(
                    margin: const EdgeInsets.only(top: 30),
                    child: GestureDetector(
                        onTap: () {
                          FirebaseFirestore.instance
                              .collection("antriansemua")
                              .doc(user!.uid)
                              .delete();

                          FirebaseFirestore.instance
                              .collection("dokterkandungan")
                              .doc(user!.uid)
                              .delete();

                          FirebaseFirestore.instance
                              .collection("dokterjiwa")
                              .doc(user!.uid)
                              .delete();

                          FirebaseFirestore.instance
                              .collection("dokterTHT")
                              .doc(user!.uid)
                              .delete();

                          FirebaseFirestore.instance
                              .collection("dokteranak")
                              .doc(user!.uid)
                              .delete();
                          FirebaseFirestore.instance
                              .collection("dokterbedah")
                              .doc(user!.uid)
                              .delete();

                          FirebaseFirestore.instance
                              .collection("doktergigi")
                              .doc(user!.uid)
                              .delete();

                          FirebaseFirestore.instance
                              .collection("dokterjantung")
                              .doc(user!.uid)
                              .delete();

                          FirebaseFirestore.instance
                              .collection("dokterp.dalam")
                              .doc(user!.uid)
                              .delete();
                          FirebaseFirestore.instance
                              .collection("dokterparu")
                              .doc(user!.uid)
                              .delete();

                          FirebaseFirestore.instance
                              .collection("doktersaraf")
                              .doc(user!.uid)
                              .delete();

                          FirebaseFirestore.instance
                              .collection("doktermata")
                              .doc(user!.uid)
                              .delete();

                          FirebaseFirestore.instance
                              .collection("dokterbedah")
                              .doc(user!.uid)
                              .delete();

                          FirebaseFirestore.instance
                              .collection("doktergizi")
                              .doc(user!.uid)
                              .delete();

                          Fluttertoast.showToast(msg: "Antrian Dibatalkan");
                          Navigator.push(
                            context,
                            new MaterialPageRoute(
                                builder: (context) => new Home()),
                          );
                        },
                        child: Image(image: AssetImage('assets/batalkan.png'))),
                  ),
                ),
                SizedBox(
                  height: 50,
                ),
                Container(
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
