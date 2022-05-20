import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:redoc/admin/homeAdmin.dart';
import 'package:redoc/admin/utamaAdmin.dart';
import 'package:redoc/antrian/DaftarAntrian.dart';

import 'package:redoc/antrian/antrian_model.dart';
import 'package:redoc/beranda.dart';

class JiwaAdmin extends StatefulWidget {
  const JiwaAdmin({Key? key}) : super(key: key);

  @override
  State<JiwaAdmin> createState() => _JiwaAdminState();
}

class _JiwaAdminState extends State<JiwaAdmin> {
  User? user = FirebaseAuth.instance.currentUser;
  Antrian test = Antrian();
  List daftarPasien = [];
  @override
  void initState() {
    super.initState();

    FirebaseFirestore.instance.collection("dokterjiwa").get().then((value) {
      value.docs.forEach((element) {
        //print(element.data());
        final data = element.data();
        daftarPasien.add(data);
        //print(data['pasien']['nama']);
      });
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
                              builder: (context) => new DaftarAntrianSemua()),
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
                Text(
                  "Daftar Pasien",
                  style: TextStyle(fontFamily: 'Poppins', fontSize: 19),
                ),
                Text(
                  "Spesialis Kejiwaan",
                  style: TextStyle(fontFamily: 'PoppinsRegular', fontSize: 14),
                ),
                SizedBox(
                  height: 20,
                ),
                ListView.builder(
                  scrollDirection: Axis.vertical,
                  shrinkWrap: true,
                  itemCount: daftarPasien.length,
                  itemBuilder: (context, index) {
                    return ListTile(
                      title: Text(
                        daftarPasien[index]['pasien']['nama'],
                        style: TextStyle(fontFamily: 'Poppins', fontSize: 14),
                      ),
                      subtitle: Text(
                        "No. Antrian : ${daftarPasien[index]['antrian'].toString()}",
                        style: TextStyle(
                            fontFamily: 'PoppinsRegular', fontSize: 14),
                      ),
                    );
                  },
                ),
                SizedBox(
                  height: 80,
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
                              builder: (context) => new HomeAdmin()),
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
