import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:redoc/antrian/antrian_bedah.dart';
import 'package:redoc/dokter/dokterTerpilih.dart';
import 'package:redoc/pilihdokter.dart';
import 'package:redoc/dokter/dokter_model.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:redoc/user_model.dart';

class PenyakitBedah extends StatefulWidget {
  const PenyakitBedah({Key? key}) : super(key: key);

  @override
  State<PenyakitBedah> createState() => _PenyakitBedahState();
}

class _PenyakitBedahState extends State<PenyakitBedah> {
  final _auth = FirebaseAuth.instance;
  DokterModel daftarDokter = DokterModel();
  UserModel loginUser = UserModel();
  User? user = FirebaseAuth.instance.currentUser;

  @override
  void initState() {
    super.initState();
    FirebaseFirestore.instance
        .collection("dokter")
        .doc("bedah")
        .get()
        .then((value) {
      this.daftarDokter = DokterModel.fromMap(value.data());
      FirebaseFirestore.instance
          .collection("users")
          .doc(user!.uid)
          .get()
          .then((value) {
        this.loginUser = UserModel.fromMap(value.data());
      });
      setState(() {});
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff17B3AC),
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
                              builder: (context) => new PilihDokter()),
                        );
                      },
                      icon: Image(image: AssetImage('assets/backbutton.png')),
                    ),
                  ),
                  Image(image: AssetImage('assets/logoputih.png'))
                ],
              ),
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  margin: EdgeInsets.only(bottom: 20),
                  child: Image(image: AssetImage('assets/bedah2.png')),
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text(
                      'Dokter Spesialis',
                      style: TextStyle(
                          color: Color(0xffffffff),
                          fontFamily: 'PoppinsRegular',
                          fontSize: 16),
                    ),
                    Text(
                      'Penyakit Bedah',
                      style: TextStyle(
                          color: Color(0xffffffff),
                          fontFamily: 'Poppins',
                          fontSize: 24),
                    )
                  ],
                ),
                Container(
                  margin: EdgeInsets.only(top: 20, bottom: 30),
                  child: SizedBox(
                    width: 250,
                    child: Image(image: AssetImage('assets/line2.png')),
                  ),
                ),
                Row(
                  children: [
                    SizedBox(
                      width: 20,
                    ),
                    Column(
                      children: [
                        Image(image: AssetImage('assets/fotodokter.png')),
                        Container(
                            margin: const EdgeInsets.only(top: 10),
                            child: Center(
                              child: Container(
                                height: 30,
                                width: 120,
                                margin: EdgeInsets.only(bottom: 10),
                                //alignment: Alignment(0.0, -1.0),
                                child: RaisedButton(
                                  shape: RoundedRectangleBorder(
                                      borderRadius:
                                          BorderRadius.circular(30.0)),
                                  color: Color(0xffffffff),
                                  onPressed: () {
                                    upData();
                                    Fluttertoast.showToast(
                                        msg: "Nomor antrian diambil");
                                    Navigator.push(
                                      context,
                                      new MaterialPageRoute(
                                          builder: (context) =>
                                              new AntrianBedah()),
                                    );
                                  },
                                  child: Center(
                                    child: Text(
                                      'Pilih Dokter',
                                      style: TextStyle(
                                          color: Color(0xff35858B),
                                          fontSize: 12,
                                          fontFamily: 'Poppins'),
                                    ),
                                  ),
                                ),
                              ),
                            )),
                      ],
                    ),
                    SizedBox(
                      width: 30,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          '${daftarDokter.nama}',
                          style: TextStyle(
                              color: Color(0xffffffff),
                              fontFamily: "Poppins",
                              fontSize: 18),
                        ),
                        Container(
                          margin: EdgeInsets.only(top: 10),
                          child: Image(image: AssetImage('assets/line3.png')),
                        ),
                        Container(
                          margin: EdgeInsets.only(top: 10),
                          child: Text(
                            'Jadwal :',
                            style: TextStyle(
                                color: Color(0xffffffff),
                                fontFamily: 'PoppinsRegular',
                                fontSize: 16),
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.only(top: 10),
                          child: Text(
                            '${daftarDokter.jadwal}',
                            style: TextStyle(
                                color: Color(0xffffffff),
                                fontFamily: 'PoppinsRegular',
                                fontSize: 12),
                          ),
                        )
                      ],
                    )
                  ],
                )
              ],
            )
          ],
        ),
      ),
    );
  }

  upData() async {
    FirebaseFirestore firebaseFirestore = FirebaseFirestore.instance;
    User? user = _auth.currentUser;

    DokterTerpilih dokterTerpilih = DokterTerpilih();

    final FirebaseFirestore firestore = FirebaseFirestore.instance;
    List l = [];
    await FirebaseFirestore.instance
        .collection('dokterbedah')
        .orderBy("waktu")
        .limitToLast(1)
        .get()
        .then((value) => value.docs.forEach((element) {
              final data = element.data();
              l.add(data['antrian']);
              print(l);
            }));

    var batch = firestore.batch();

    var storyRef = firestore.collection('dokterbedah').doc(user!.uid).set({
      'antrian': l[0] + 1,
      'dokter': {'jadwal': daftarDokter.jadwal, 'nama': daftarDokter.nama},
      'pasien': {
        'nama': loginUser.namaLengkap,
        'rekamMedis': loginUser.rekamMedis
      },
      'status': "Menunggu",
      'waktu': FieldValue.serverTimestamp()
    });

    //final akhir = result + 1;
    //print(akhir);
  }
}
