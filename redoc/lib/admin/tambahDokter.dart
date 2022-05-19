<<<<<<< HEAD
<<<<<<< HEAD
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:redoc/admin/admin_model.dart';
import 'package:redoc/admin/homeAdmin.dart';
import 'package:redoc/dokter/dokter_model.dart';
import 'package:redoc/rekammedis.dart';

class TambahDokter extends StatefulWidget {
  const TambahDokter({Key? key}) : super(key: key);

  @override
  State<TambahDokter> createState() => _TambahDokterState();
}

class _TambahDokterState extends State<TambahDokter> {
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

  TextEditingController spesialis = new TextEditingController();
  TextEditingController nama = new TextEditingController();

  TextEditingController hari = new TextEditingController();
  TextEditingController tanggal = new TextEditingController();
  TextEditingController jam = new TextEditingController();

  CollectionReference jadwal = FirebaseFirestore.instance.collection('dokter');

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
                              builder: (context) => new HomeAdmin()),
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
                Image(image: AssetImage('assets/textjadwal.png')),
                Text(
                  'No. Petugas: ${loginUser.noPetugas}',
                  style: TextStyle(
                      fontFamily: 'PoppinsRegular',
                      fontSize: 14,
                      color: Color(0xff000000)),
                ),
                SizedBox(
                  height: 70,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      width: 360,
                      padding: new EdgeInsets.only(
                        right: 10.0,
                        left: 10,
                      ),
                      child: TextFormField(
                        controller: spesialis,
                        onSaved: (value) {
                          spesialis.text = value!;
                        },
                        decoration: InputDecoration(
                          //fillColor: Color(0xffF1F0F5),
                          //filled: true,
                          enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(20),
                            borderSide: BorderSide(
                                color: Color(0xff989898), width: 2.0),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(20),
                            borderSide: BorderSide(
                                color: Color(0xff989898), width: 2.0),
                          ),
                          labelText: 'Dokter Spesialis',
                          labelStyle: TextStyle(
                              color: Color(0xff989898),
                              fontFamily: 'PoppinsRegular',
                              fontSize: 12),
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 20,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      width: 360,
                      padding: new EdgeInsets.only(
                        right: 10.0,
                        left: 10,
                      ),
                      child: TextFormField(
                        controller: nama,
                        onSaved: (value) {
                          nama.text = value!;
                        },
                        decoration: InputDecoration(
                          //fillColor: Color(0xffF1F0F5),
                          //filled: true,
                          enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(20),
                            borderSide: BorderSide(
                                color: Color(0xff989898), width: 2.0),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(20),
                            borderSide: BorderSide(
                                color: Color(0xff989898), width: 2.0),
                          ),
                          labelText: 'Nama Dokter',
                          labelStyle: TextStyle(
                              color: Color(0xff989898),
                              fontFamily: 'PoppinsRegular',
                              fontSize: 12),
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 20,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      width: 120,
                      padding: new EdgeInsets.only(
                        right: 10.0,
                        left: 10,
                      ),
                      child: TextFormField(
                        controller: hari,
                        onSaved: (value) {
                          hari.text = value!;
                        },
                        decoration: InputDecoration(
                          //fillColor: Color(0xffF1F0F5),
                          //filled: true,
                          enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(20),
                            borderSide: BorderSide(
                                color: Color(0xff989898), width: 2.0),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(20),
                            borderSide: BorderSide(
                                color: Color(0xff989898), width: 2.0),
                          ),
                          labelText: 'Hari',
                          labelStyle: TextStyle(
                              color: Color(0xff989898),
                              fontFamily: 'PoppinsRegular',
                              fontSize: 12),
                        ),
                      ),
                    ),
                    Container(
                      width: 120,
                      padding: new EdgeInsets.only(
                        right: 10.0,
                        left: 10,
                      ),
                      child: TextFormField(
                        controller: tanggal,
                        onSaved: (value) {
                          tanggal.text = value!;
                        },
                        decoration: InputDecoration(
                          //fillColor: Color(0xffF1F0F5),
                          //filled: true,
                          enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(20),
                            borderSide: BorderSide(
                                color: Color(0xff989898), width: 2.0),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(20),
                            borderSide: BorderSide(
                                color: Color(0xff989898), width: 2.0),
                          ),
                          labelText: 'Tanggal',
                          labelStyle: TextStyle(
                              color: Color(0xff989898),
                              fontFamily: 'PoppinsRegular',
                              fontSize: 12),
                        ),
                      ),
                    ),
                    Container(
                      width: 120,
                      padding: new EdgeInsets.only(
                        right: 10.0,
                        left: 10,
                      ),
                      child: TextFormField(
                        controller: jam,
                        onSaved: (value) {
                          jam.text = value!;
                        },
                        decoration: InputDecoration(
                          //fillColor: Color(0xffF1F0F5),
                          //filled: true,
                          enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(20),
                            borderSide: BorderSide(
                                color: Color(0xff989898), width: 2.0),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(20),
                            borderSide: BorderSide(
                                color: Color(0xff989898), width: 2.0),
                          ),
                          labelText: 'Jam',
                          labelStyle: TextStyle(
                              color: Color(0xff989898),
                              fontFamily: 'PoppinsRegular',
                              fontSize: 12),
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 50,
                ),
                Container(
                  margin: const EdgeInsets.only(top: 10),
                  child: SizedBox(
                    height: 100,
                    width: 150,
                    child: IconButton(
                      onPressed: () {
                        addDokter();
                      },
                      icon: Image(image: AssetImage('assets/simpanbutton.png')),
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

  Future<void> addDokter() async {
    FirebaseFirestore firebaseFirestore = FirebaseFirestore.instance;
    DokterModel dokterModel = DokterModel();
    dokterModel.dokter = spesialis.text;
    dokterModel.nama = nama.text;
    dokterModel.jadwal = [hari.text, tanggal.text, jam.text];

    await firebaseFirestore
        .collection("dokter")
        .doc(dokterModel.dokter)
        .set(dokterModel.toMap());
  }
}
=======
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:redoc/admin/admin_model.dart';
import 'package:redoc/admin/homeAdmin.dart';
import 'package:redoc/dokter/dokter_model.dart';
import 'package:redoc/rekammedis.dart';

class TambahDokter extends StatefulWidget {
  const TambahDokter({Key? key}) : super(key: key);

  @override
  State<TambahDokter> createState() => _TambahDokterState();
}

class _TambahDokterState extends State<TambahDokter> {
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

  TextEditingController spesialis = new TextEditingController();
  TextEditingController nama = new TextEditingController();

  TextEditingController hari = new TextEditingController();
  TextEditingController tanggal = new TextEditingController();
  TextEditingController jam = new TextEditingController();

  CollectionReference jadwal = FirebaseFirestore.instance.collection('dokter');

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
                              builder: (context) => new HomeAdmin()),
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
                Image(image: AssetImage('assets/textjadwal.png')),
                Text(
                  'No. Petugas: ${loginUser.noPetugas}',
                  style: TextStyle(
                      fontFamily: 'PoppinsRegular',
                      fontSize: 14,
                      color: Color(0xff000000)),
                ),
                SizedBox(
                  height: 70,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      width: 360,
                      padding: new EdgeInsets.only(
                        right: 10.0,
                        left: 10,
                      ),
                      child: TextFormField(
                        controller: spesialis,
                        onSaved: (value) {
                          spesialis.text = value!;
                        },
                        decoration: InputDecoration(
                          //fillColor: Color(0xffF1F0F5),
                          //filled: true,
                          enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(20),
                            borderSide: BorderSide(
                                color: Color(0xff989898), width: 2.0),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(20),
                            borderSide: BorderSide(
                                color: Color(0xff989898), width: 2.0),
                          ),
                          labelText: 'Dokter Spesialis',
                          labelStyle: TextStyle(
                              color: Color(0xff989898),
                              fontFamily: 'PoppinsRegular',
                              fontSize: 12),
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 20,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      width: 360,
                      padding: new EdgeInsets.only(
                        right: 10.0,
                        left: 10,
                      ),
                      child: TextFormField(
                        controller: nama,
                        onSaved: (value) {
                          nama.text = value!;
                        },
                        decoration: InputDecoration(
                          //fillColor: Color(0xffF1F0F5),
                          //filled: true,
                          enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(20),
                            borderSide: BorderSide(
                                color: Color(0xff989898), width: 2.0),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(20),
                            borderSide: BorderSide(
                                color: Color(0xff989898), width: 2.0),
                          ),
                          labelText: 'Nama Dokter',
                          labelStyle: TextStyle(
                              color: Color(0xff989898),
                              fontFamily: 'PoppinsRegular',
                              fontSize: 12),
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 20,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      width: 120,
                      padding: new EdgeInsets.only(
                        right: 10.0,
                        left: 10,
                      ),
                      child: TextFormField(
                        controller: hari,
                        onSaved: (value) {
                          hari.text = value!;
                        },
                        decoration: InputDecoration(
                          //fillColor: Color(0xffF1F0F5),
                          //filled: true,
                          enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(20),
                            borderSide: BorderSide(
                                color: Color(0xff989898), width: 2.0),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(20),
                            borderSide: BorderSide(
                                color: Color(0xff989898), width: 2.0),
                          ),
                          labelText: 'Hari',
                          labelStyle: TextStyle(
                              color: Color(0xff989898),
                              fontFamily: 'PoppinsRegular',
                              fontSize: 12),
                        ),
                      ),
                    ),
                    Container(
                      width: 120,
                      padding: new EdgeInsets.only(
                        right: 10.0,
                        left: 10,
                      ),
                      child: TextFormField(
                        controller: tanggal,
                        onSaved: (value) {
                          tanggal.text = value!;
                        },
                        decoration: InputDecoration(
                          //fillColor: Color(0xffF1F0F5),
                          //filled: true,
                          enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(20),
                            borderSide: BorderSide(
                                color: Color(0xff989898), width: 2.0),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(20),
                            borderSide: BorderSide(
                                color: Color(0xff989898), width: 2.0),
                          ),
                          labelText: 'Tanggal',
                          labelStyle: TextStyle(
                              color: Color(0xff989898),
                              fontFamily: 'PoppinsRegular',
                              fontSize: 12),
                        ),
                      ),
                    ),
                    Container(
                      width: 120,
                      padding: new EdgeInsets.only(
                        right: 10.0,
                        left: 10,
                      ),
                      child: TextFormField(
                        controller: jam,
                        onSaved: (value) {
                          jam.text = value!;
                        },
                        decoration: InputDecoration(
                          //fillColor: Color(0xffF1F0F5),
                          //filled: true,
                          enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(20),
                            borderSide: BorderSide(
                                color: Color(0xff989898), width: 2.0),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(20),
                            borderSide: BorderSide(
                                color: Color(0xff989898), width: 2.0),
                          ),
                          labelText: 'Jam',
                          labelStyle: TextStyle(
                              color: Color(0xff989898),
                              fontFamily: 'PoppinsRegular',
                              fontSize: 12),
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 50,
                ),
                Container(
                  margin: const EdgeInsets.only(top: 10),
                  child: SizedBox(
                    height: 100,
                    width: 150,
                    child: IconButton(
                      onPressed: () {
                        addDokter();
                      },
                      icon: Image(image: AssetImage('assets/simpanbutton.png')),
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

  Future<void> addDokter() async {
    FirebaseFirestore firebaseFirestore = FirebaseFirestore.instance;
    DokterModel dokterModel = DokterModel();
    dokterModel.dokter = spesialis.text;
    dokterModel.nama = nama.text;
    dokterModel.jadwal = [hari.text, tanggal.text, jam.text];

    await firebaseFirestore
        .collection("dokter")
        .doc(dokterModel.dokter)
        .set(dokterModel.toMap());
  }
}
>>>>>>> 1904111010056
=======
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:redoc/admin/admin_model.dart';
import 'package:redoc/admin/homeAdmin.dart';
import 'package:redoc/dokter/dokter_model.dart';
import 'package:redoc/rekammedis.dart';

class TambahDokter extends StatefulWidget {
  const TambahDokter({Key? key}) : super(key: key);

  @override
  State<TambahDokter> createState() => _TambahDokterState();
}

class _TambahDokterState extends State<TambahDokter> {
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

  TextEditingController spesialis = new TextEditingController();
  TextEditingController nama = new TextEditingController();

  TextEditingController hari = new TextEditingController();
  TextEditingController tanggal = new TextEditingController();
  TextEditingController jam = new TextEditingController();

  CollectionReference jadwal = FirebaseFirestore.instance.collection('dokter');

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
                              builder: (context) => new HomeAdmin()),
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
                Image(image: AssetImage('assets/textjadwal.png')),
                Text(
                  'No. Petugas: ${loginUser.noPetugas}',
                  style: TextStyle(
                      fontFamily: 'PoppinsRegular',
                      fontSize: 14,
                      color: Color(0xff000000)),
                ),
                SizedBox(
                  height: 70,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      width: 360,
                      padding: new EdgeInsets.only(
                        right: 10.0,
                        left: 10,
                      ),
                      child: TextFormField(
                        controller: spesialis,
                        onSaved: (value) {
                          spesialis.text = value!;
                        },
                        decoration: InputDecoration(
                          //fillColor: Color(0xffF1F0F5),
                          //filled: true,
                          enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(20),
                            borderSide: BorderSide(
                                color: Color(0xff989898), width: 2.0),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(20),
                            borderSide: BorderSide(
                                color: Color(0xff989898), width: 2.0),
                          ),
                          labelText: 'Dokter Spesialis',
                          labelStyle: TextStyle(
                              color: Color(0xff989898),
                              fontFamily: 'PoppinsRegular',
                              fontSize: 12),
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 20,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      width: 360,
                      padding: new EdgeInsets.only(
                        right: 10.0,
                        left: 10,
                      ),
                      child: TextFormField(
                        controller: nama,
                        onSaved: (value) {
                          nama.text = value!;
                        },
                        decoration: InputDecoration(
                          //fillColor: Color(0xffF1F0F5),
                          //filled: true,
                          enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(20),
                            borderSide: BorderSide(
                                color: Color(0xff989898), width: 2.0),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(20),
                            borderSide: BorderSide(
                                color: Color(0xff989898), width: 2.0),
                          ),
                          labelText: 'Nama Dokter',
                          labelStyle: TextStyle(
                              color: Color(0xff989898),
                              fontFamily: 'PoppinsRegular',
                              fontSize: 12),
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 20,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      width: 120,
                      padding: new EdgeInsets.only(
                        right: 10.0,
                        left: 10,
                      ),
                      child: TextFormField(
                        controller: hari,
                        onSaved: (value) {
                          hari.text = value!;
                        },
                        decoration: InputDecoration(
                          //fillColor: Color(0xffF1F0F5),
                          //filled: true,
                          enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(20),
                            borderSide: BorderSide(
                                color: Color(0xff989898), width: 2.0),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(20),
                            borderSide: BorderSide(
                                color: Color(0xff989898), width: 2.0),
                          ),
                          labelText: 'Hari',
                          labelStyle: TextStyle(
                              color: Color(0xff989898),
                              fontFamily: 'PoppinsRegular',
                              fontSize: 12),
                        ),
                      ),
                    ),
                    Container(
                      width: 120,
                      padding: new EdgeInsets.only(
                        right: 10.0,
                        left: 10,
                      ),
                      child: TextFormField(
                        controller: tanggal,
                        onSaved: (value) {
                          tanggal.text = value!;
                        },
                        decoration: InputDecoration(
                          //fillColor: Color(0xffF1F0F5),
                          //filled: true,
                          enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(20),
                            borderSide: BorderSide(
                                color: Color(0xff989898), width: 2.0),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(20),
                            borderSide: BorderSide(
                                color: Color(0xff989898), width: 2.0),
                          ),
                          labelText: 'Tanggal',
                          labelStyle: TextStyle(
                              color: Color(0xff989898),
                              fontFamily: 'PoppinsRegular',
                              fontSize: 12),
                        ),
                      ),
                    ),
                    Container(
                      width: 120,
                      padding: new EdgeInsets.only(
                        right: 10.0,
                        left: 10,
                      ),
                      child: TextFormField(
                        controller: jam,
                        onSaved: (value) {
                          jam.text = value!;
                        },
                        decoration: InputDecoration(
                          //fillColor: Color(0xffF1F0F5),
                          //filled: true,
                          enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(20),
                            borderSide: BorderSide(
                                color: Color(0xff989898), width: 2.0),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(20),
                            borderSide: BorderSide(
                                color: Color(0xff989898), width: 2.0),
                          ),
                          labelText: 'Jam',
                          labelStyle: TextStyle(
                              color: Color(0xff989898),
                              fontFamily: 'PoppinsRegular',
                              fontSize: 12),
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 50,
                ),
                Container(
                  margin: const EdgeInsets.only(top: 10),
                  child: SizedBox(
                    height: 100,
                    width: 150,
                    child: IconButton(
                      onPressed: () {
                        addDokter();
                      },
                      icon: Image(image: AssetImage('assets/simpanbutton.png')),
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

  Future<void> addDokter() async {
    FirebaseFirestore firebaseFirestore = FirebaseFirestore.instance;
    DokterModel dokterModel = DokterModel();
    dokterModel.dokter = spesialis.text;
    dokterModel.nama = nama.text;
    dokterModel.jadwal = [hari.text, tanggal.text, jam.text];

    await firebaseFirestore
        .collection("dokter")
        .doc(dokterModel.dokter)
        .set(dokterModel.toMap());
  }
}
>>>>>>> 2004111010016
