import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:redoc/beranda.dart';
import 'package:redoc/dokter/dokterTerpilih.dart';
import 'package:redoc/pilihdokter.dart';

class AntrianDalam extends StatefulWidget {
  const AntrianDalam({Key? key}) : super(key: key);

  @override
  State<AntrianDalam> createState() => _AntrianDalamState();
}

class _AntrianDalamState extends State<AntrianDalam> {
  final _auth = FirebaseAuth.instance;
  DokterTerpilih daftarDokter = DokterTerpilih();

  User? user = FirebaseAuth.instance.currentUser;
  @override
  void initState() {
    super.initState();
    FirebaseFirestore.instance
        .collection("dokterp.dalam")
        .doc(user!.uid)
        .get()
        .then((value) {
      this.daftarDokter = DokterTerpilih.fromMap(value.data());

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
                        antrianSemua();
                        Navigator.push(
                          context,
                          new MaterialPageRoute(
                              builder: (context) => new PilihDokter()),
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
                Stack(
                  alignment: Alignment.center,
                  children: [
                    Image(image: AssetImage('assets/lingkaran.png')),
                    Text(
                      '${daftarDokter.antrian}',
                      style: TextStyle(
                          fontFamily: 'Poppins',
                          fontSize: 48,
                          color: Color(0xff35858B)),
                    )
                  ],
                ),
                SizedBox(
                  height: 20,
                ),
                Text(
                  'Nomor Antrian Berhasil Diambil',
                  style: TextStyle(
                      fontFamily: 'Poppins',
                      fontSize: 14,
                      color: Color(0xff000000)),
                ),
                SizedBox(
                  height: 50,
                ),
                Stack(
                  alignment: Alignment.topCenter,
                  children: [
                    Image(image: AssetImage('assets/kotakDokter.png')),
                    Column(
                      children: [
                        Container(
                          margin: EdgeInsets.only(top: 40),
                          child: Text(
                            "Nama Pasien: ${daftarDokter.pasien?['nama']}",
                            style: TextStyle(
                                color: Color(0xffffffff),
                                fontFamily: 'PoppinsRegular',
                                fontSize: 14),
                          ),
                        ),
                        Text(
                          "Nama Dokter: ${daftarDokter.dokter?['nama']}",
                          style: TextStyle(
                              color: Color(0xffffffff),
                              fontFamily: 'PoppinsRegular',
                              fontSize: 14),
                        ),
                        Text(
                          "\nJadwal",
                          style: TextStyle(
                              color: Color(0xffffffff),
                              fontFamily: 'Poppins',
                              fontSize: 14),
                        ),
                        Text(
                          " ${daftarDokter.dokter?['jadwal'][0]}, ${daftarDokter.dokter?['jadwal'][1]}",
                          style: TextStyle(
                              color: Color(0xffffffff),
                              fontFamily: 'PoppinsRegular',
                              fontSize: 14),
                        ),
                        Text(
                          "${daftarDokter.dokter?['jadwal'][2]}",
                          style: TextStyle(
                              color: Color(0xffffffff),
                              fontFamily: 'PoppinsRegular',
                              fontSize: 14),
                        ),
                      ],
                    )
                  ],
                ),
                Container(
                  margin: const EdgeInsets.only(top: 10),
                  child: SizedBox(
                    height: 100,
                    width: 200,
                    child: IconButton(
                      onPressed: () {
                        antrianSemua();
                        Navigator.push(
                          context,
                          new MaterialPageRoute(
                              builder: (context) => new Home()),
                        );
                        //   Navigator.push(
                        //     context,
                        //    new MaterialPageRoute(
                        //        builder: (context) => new Home()),
                        //  );
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

  antrianSemua() async {
    FirebaseFirestore firebaseFirestore = FirebaseFirestore.instance;
    User? user = _auth.currentUser;
    await firebaseFirestore.collection("antriansemua").doc(user!.uid).set({
      'namapasien': daftarDokter.pasien?['nama'],
      'nomorantrian': daftarDokter.antrian,
      'namadokter': daftarDokter.dokter?['nama'],
      'jadwal': daftarDokter.dokter?['jadwal'],
      'status': 'Menunggu'
    });
  }
}
