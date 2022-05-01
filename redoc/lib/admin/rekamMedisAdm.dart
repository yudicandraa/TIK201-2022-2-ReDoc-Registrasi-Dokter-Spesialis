<<<<<<< HEAD
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:redoc/admin/admin_model.dart';
import 'package:redoc/admin/homeAdmin.dart';
import 'package:redoc/rekammedis.dart';

class RMadmin extends StatefulWidget {
  const RMadmin({Key? key}) : super(key: key);

  @override
  State<RMadmin> createState() => _RMadminState();
}

class _RMadminState extends State<RMadmin> {
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

  TextEditingController noRM = new TextEditingController();
  TextEditingController dataRM = new TextEditingController();
  FirebaseFirestore firebaseFirestore = FirebaseFirestore.instance;

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
                Image(image: AssetImage('assets/textRM.png')),
                Text(
                  'No. Petugas: ${loginUser.noPetugas}',
                  style: TextStyle(
                      fontFamily: 'PoppinsRegular',
                      fontSize: 14,
                      color: Color(0xff000000)),
                ),
                SizedBox(
                  height: 50,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      width: 300,
                      padding: new EdgeInsets.only(
                        right: 10.0,
                        left: 10,
                      ),
                      child: TextFormField(
                        controller: noRM,
                        onSaved: (value) {
                          noRM.text = value!;
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
                          labelText: 'UID',
                          labelStyle: TextStyle(
                              color: Color(0xff989898),
                              fontFamily: 'PoppinsRegular',
                              fontSize: 12),
                        ),
                      ),
                    ),
                    Container(
                      child: GestureDetector(
                          child: Image(image: AssetImage('assets/search.png'))),
                    ),
                  ],
                ),
                SizedBox(
                  height: 50,
                ),
                Column(
                  children: [
                    Container(
                      width: 370,
                      padding: new EdgeInsets.only(
                        right: 10.0,
                        left: 10,
                      ),
                      child: TextFormField(
                        keyboardType: TextInputType.multiline,
                        maxLines: 10,
                        controller: dataRM,
                        onSaved: (value) {
                          dataRM.text = value!;
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
                          labelText: 'Masukkan Riwayat Rekam Medis',
                          labelStyle: TextStyle(
                              color: Color(0xff989898),
                              fontFamily: 'PoppinsRegular',
                              fontSize: 12),
                        ),
                      ),
                    ),
                  ],
                ),
                Container(
                  margin: const EdgeInsets.only(top: 10),
                  child: SizedBox(
                    height: 100,
                    width: 150,
                    child: IconButton(
                      onPressed: () {
                        filter(noRM.text, dataRM.text);
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

  void filter(String rekammedis, String dataRMpasien) async {
    final hasil = await FirebaseFirestore.instance.collection('users');
    Map<String, String> dataRMupdate = {"dataRM": dataRMpasien};
    hasil.doc(rekammedis).update(dataRMupdate);
  }
}
=======
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:redoc/admin/admin_model.dart';
import 'package:redoc/admin/homeAdmin.dart';
import 'package:redoc/rekammedis.dart';

class RMadmin extends StatefulWidget {
  const RMadmin({Key? key}) : super(key: key);

  @override
  State<RMadmin> createState() => _RMadminState();
}

class _RMadminState extends State<RMadmin> {
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

  TextEditingController noRM = new TextEditingController();
  TextEditingController dataRM = new TextEditingController();
  FirebaseFirestore firebaseFirestore = FirebaseFirestore.instance;

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
                Image(image: AssetImage('assets/textRM.png')),
                Text(
                  'No. Petugas: ${loginUser.noPetugas}',
                  style: TextStyle(
                      fontFamily: 'PoppinsRegular',
                      fontSize: 14,
                      color: Color(0xff000000)),
                ),
                SizedBox(
                  height: 50,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      width: 300,
                      padding: new EdgeInsets.only(
                        right: 10.0,
                        left: 10,
                      ),
                      child: TextFormField(
                        controller: noRM,
                        onSaved: (value) {
                          noRM.text = value!;
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
                          labelText: 'UID',
                          labelStyle: TextStyle(
                              color: Color(0xff989898),
                              fontFamily: 'PoppinsRegular',
                              fontSize: 12),
                        ),
                      ),
                    ),
                    Container(
                      child: GestureDetector(
                          child: Image(image: AssetImage('assets/search.png'))),
                    ),
                  ],
                ),
                SizedBox(
                  height: 50,
                ),
                Column(
                  children: [
                    Container(
                      width: 370,
                      padding: new EdgeInsets.only(
                        right: 10.0,
                        left: 10,
                      ),
                      child: TextFormField(
                        keyboardType: TextInputType.multiline,
                        maxLines: 10,
                        controller: dataRM,
                        onSaved: (value) {
                          dataRM.text = value!;
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
                          labelText: 'Masukkan Riwayat Rekam Medis',
                          labelStyle: TextStyle(
                              color: Color(0xff989898),
                              fontFamily: 'PoppinsRegular',
                              fontSize: 12),
                        ),
                      ),
                    ),
                  ],
                ),
                Container(
                  margin: const EdgeInsets.only(top: 10),
                  child: SizedBox(
                    height: 100,
                    width: 150,
                    child: IconButton(
                      onPressed: () {
                        filter(noRM.text, dataRM.text);
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

  void filter(String rekammedis, String dataRMpasien) async {
    final hasil = await FirebaseFirestore.instance.collection('users');
    Map<String, String> dataRMupdate = {"dataRM": dataRMpasien};
    hasil.doc(rekammedis).update(dataRMupdate);
  }
}
>>>>>>> 1904111010047
