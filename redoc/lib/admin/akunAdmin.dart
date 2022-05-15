<<<<<<< HEAD
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:redoc/admin/admin_model.dart';
import 'package:redoc/admin/loginAdm.dart';

class AkunAdmin extends StatefulWidget {
  const AkunAdmin({Key? key}) : super(key: key);

  @override
  State<AkunAdmin> createState() => _AkunAdminState();
}

class _AkunAdminState extends State<AkunAdmin> {
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
      child: Row(mainAxisAlignment: MainAxisAlignment.center, children: [
        Container(
          child: Column(
            children: [
              Stack(
                alignment: Alignment.center,
                children: [
                  Container(
                    width: MediaQuery.of(context).size.width,
                    margin: EdgeInsets.only(bottom: 70),
                    child: Image(image: AssetImage('assets/atasakun.png')),
                  ),
                  Column(
                    children: [
                      Container(
                        margin: EdgeInsets.only(top: 100),
                        child: Text(
                          '${loginUser.namaLengkap}',
                          style: TextStyle(
                              color: Color(0xff000000),
                              fontFamily: 'Poppins',
                              fontSize: 24),
                        ),
                      ),
                      Container(
                        //margin: EdgeInsets.only(left: 70, top: 100),
                        child: Text(
                          'No. Petugas : ${loginUser.noPetugas}',
                          style: TextStyle(
                              color: Color(0xff000000),
                              fontFamily: 'PoppinsRegular',
                              fontSize: 14),
                        ),
                      )
                    ],
                  )
                ],
              ),
              SizedBox(
                height: 200,
                width: 200,
                child: IconButton(
                  onPressed: () {},
                  icon: Image(image: AssetImage('assets/qrcode.png')),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                  margin: const EdgeInsets.only(top: 40),
                  child: Center(
                    child: Container(
                      height: 35,
                      width: 150,
                      margin: EdgeInsets.only(bottom: 10),
                      //alignment: Alignment(0.0, -1.0),
                      child: RaisedButton(
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(30.0)),
                        color: Color(0xff17B3AC),
                        onPressed: () {
                          logout(context);
                        },
                        child: Center(
                          child: Text(
                            'Keluar',
                            style: TextStyle(
                                color: Color(0xffffffff),
                                fontSize: 12,
                                fontFamily: 'Poppins'),
                          ),
                        ),
                      ),
                    ),
                  )),
            ],
          ),
        )
      ]),
    ));
  }

  Future<void> logout(BuildContext context) async {
    await FirebaseAuth.instance.signOut();
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => const LoginAdm()),
    );
  }
}
=======
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:redoc/admin/admin_model.dart';
import 'package:redoc/admin/loginAdm.dart';

class AkunAdmin extends StatefulWidget {
  const AkunAdmin({Key? key}) : super(key: key);

  @override
  State<AkunAdmin> createState() => _AkunAdminState();
}

class _AkunAdminState extends State<AkunAdmin> {
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
      child: Row(mainAxisAlignment: MainAxisAlignment.center, children: [
        Container(
          child: Column(
            children: [
              Stack(
                alignment: Alignment.center,
                children: [
                  Container(
                    width: MediaQuery.of(context).size.width,
                    margin: EdgeInsets.only(bottom: 70),
                    child: Image(image: AssetImage('assets/atasakun.png')),
                  ),
                  Column(
                    children: [
                      Container(
                        margin: EdgeInsets.only(top: 100),
                        child: Text(
                          '${loginUser.namaLengkap}',
                          style: TextStyle(
                              color: Color(0xff000000),
                              fontFamily: 'Poppins',
                              fontSize: 24),
                        ),
                      ),
                      Container(
                        //margin: EdgeInsets.only(left: 70, top: 100),
                        child: Text(
                          'No. Petugas : ${loginUser.noPetugas}',
                          style: TextStyle(
                              color: Color(0xff000000),
                              fontFamily: 'PoppinsRegular',
                              fontSize: 14),
                        ),
                      )
                    ],
                  )
                ],
              ),
              SizedBox(
                height: 200,
                width: 200,
                child: IconButton(
                  onPressed: () {},
                  icon: Image(image: AssetImage('assets/qrcode.png')),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                  margin: const EdgeInsets.only(top: 40),
                  child: Center(
                    child: Container(
                      height: 35,
                      width: 150,
                      margin: EdgeInsets.only(bottom: 10),
                      //alignment: Alignment(0.0, -1.0),
                      child: RaisedButton(
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(30.0)),
                        color: Color(0xff17B3AC),
                        onPressed: () {
                          logout(context);
                        },
                        child: Center(
                          child: Text(
                            'Keluar',
                            style: TextStyle(
                                color: Color(0xffffffff),
                                fontSize: 12,
                                fontFamily: 'Poppins'),
                          ),
                        ),
                      ),
                    ),
                  )),
            ],
          ),
        )
      ]),
    ));
  }

  Future<void> logout(BuildContext context) async {
    await FirebaseAuth.instance.signOut();
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => const LoginAdm()),
    );
  }
}
>>>>>>> 1904111010056
