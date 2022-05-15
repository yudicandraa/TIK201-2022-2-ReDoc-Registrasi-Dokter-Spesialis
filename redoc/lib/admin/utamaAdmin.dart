import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:redoc/admin/admin_model.dart';
import 'package:redoc/admin/daftarPasien.dart';
import 'package:redoc/admin/rekamMedisAdm.dart';
import 'package:redoc/admin/tambahDokter.dart';

class UtamaAdmin extends StatefulWidget {
  const UtamaAdmin({Key? key}) : super(key: key);

  @override
  State<UtamaAdmin> createState() => _UtamaAdminState();
}

class _UtamaAdminState extends State<UtamaAdmin> {
  User? user = FirebaseAuth.instance.currentUser;
  AdminModel loginUser = AdminModel();

  @override
  void initState() {
    super.initState();
    FirebaseFirestore.instance
        .collection("admin")
        .doc(user!.uid)
        .get()
        .then((value) {
      this.loginUser = AdminModel.fromMap(value.data());
      setState(() {});
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      margin: const EdgeInsets.only(top: 10),
      padding: new EdgeInsets.all(30.0),
      child: Container(
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Halo Admin',
                      style: TextStyle(
                          color: Color(0xff989898),
                          fontFamily: 'PoppinsRegular',
                          fontSize: 12),
                    ),
                    Text(
                      '${loginUser.namaLengkap}',
                      style: TextStyle(
                          color: Color(0xff000000),
                          fontFamily: 'Poppins',
                          fontSize: 18),
                    ),
                  ],
                ),
                Row(
                  children: [
                    SizedBox(
                      height: 30,
                      width: 30,
                      child: Image(image: AssetImage('assets/qr.png')),
                    ),
                    SizedBox(
                      height: 30,
                      width: 30,
                      child: Image(image: AssetImage('assets/alarm.png')),
                    ),
                  ],
                ),
              ],
            ),
            Container(
              margin: const EdgeInsets.only(top: 20),
              child: SizedBox(
                height: 180,
                width: 340,
                child: IconButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const DaftarPasien()),
                    );
                  },
                  icon: Image(image: AssetImage('assets/lihatpasien.png')),
                  iconSize: 200,
                ),
              ),
            ),
            Container(
                margin: const EdgeInsets.only(top: 40, bottom: 40),
                child: Image(image: AssetImage('assets/line.png'))),
            GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const TambahDokter()),
                  );
                },
                child: Image(image: AssetImage('assets/ubahjadwal.png'))),
            Container(
              margin: EdgeInsets.only(top: 20),
              child: GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const RMadmin()),
                    );
                  },
                  child: Image(image: AssetImage('assets/tentang.png'))),
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                    margin: const EdgeInsets.only(top: 20, bottom: 20),
                    child: Text(
                      'Informasi Lainnya',
                      style: TextStyle(
                          fontFamily: 'Poppins', color: Color(0xff000000)),
                    )),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image(image: AssetImage('assets/jdwlprtkhrini.png')),
                    SizedBox(
                      width: 20,
                    ),
                    Image(image: AssetImage('assets/rsharbun.png')),
                  ],
                )
              ],
            )
          ],
        ),
      ),
    ));
  }
}
