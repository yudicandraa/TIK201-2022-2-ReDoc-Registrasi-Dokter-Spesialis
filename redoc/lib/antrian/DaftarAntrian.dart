import 'package:flutter/material.dart';
import 'package:redoc/admin/homeAdmin.dart';
import 'package:redoc/anak.dart';
import 'package:redoc/bedah.dart';
import 'package:redoc/beranda.dart';
import 'package:redoc/gigi.dart';
import 'package:redoc/gizi.dart';
import 'package:redoc/jantung.dart';
import 'package:redoc/kandungan.dart';
import 'package:redoc/paru.dart';
import 'package:redoc/pasien/anak.dart';
import 'package:redoc/pasien/bedahumum.dart';
import 'package:redoc/pasien/dalam.dart';
import 'package:redoc/pasien/gigi.dart';
import 'package:redoc/pasien/gizi.dart';
import 'package:redoc/pasien/jantung.dart';
import 'package:redoc/pasien/jiwa.dart';
import 'package:redoc/pasien/kandungan.dart';
import 'package:redoc/pasien/mata.dart';
import 'package:redoc/pasien/paru.dart';
import 'package:redoc/pasien/saraf.dart';
import 'package:redoc/pasien/tht.dart';

import 'package:redoc/penyakitdalam.dart';
import 'package:redoc/penyakitjiwa.dart';
import 'package:redoc/penyakitmata.dart';

import 'package:redoc/penyakitsaraf.dart';
import 'package:redoc/penyakittht.dart';

import 'package:redoc/utama.dart';

class DaftarAntrianSemua extends StatefulWidget {
  const DaftarAntrianSemua({Key? key}) : super(key: key);

  @override
  State<DaftarAntrianSemua> createState() => _DaftarAntrianSemuaState();
}

class _DaftarAntrianSemuaState extends State<DaftarAntrianSemua> {
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
                              builder: (context) => new HomeAdmin()),
                        );
                      },
                      icon: Image(image: AssetImage('assets/backbutton.png')),
                    ),
                  ),
                  Image(image: AssetImage('assets/logoputih.png'))
                ],
              ),
            ),
            Center(
                child: Container(
              margin: EdgeInsets.only(top: 50, bottom: 30),
              child: Text(
                'Pilih Dokter Spesialis Tujuan',
                style: TextStyle(
                    color: Color(0xffffffff),
                    fontFamily: 'Poppins',
                    fontSize: 16),
              ),
            )),
            Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Row(
                    children: [
                      SizedBox(
                        height: 150,
                        width: 100,
                        child: IconButton(
                          onPressed: () {
                            Navigator.push(
                              context,
                              new MaterialPageRoute(
                                  builder: (context) => new DaftarKandungan()),
                            );
                          },
                          icon:
                              Image(image: AssetImage('assets/kandungan.png')),
                        ),
                      ),
                      SizedBox(
                        height: 150,
                        width: 100,
                        child: IconButton(
                          onPressed: () {
                            Navigator.push(
                              context,
                              new MaterialPageRoute(
                                  builder: (context) => new DaftarAnak()),
                            );
                          },
                          icon: Image(image: AssetImage('assets/anak.png')),
                        ),
                      ),
                      SizedBox(
                        height: 150,
                        width: 100,
                        child: IconButton(
                          onPressed: () {
                            Navigator.push(
                              context,
                              new MaterialPageRoute(
                                  builder: (context) => new DaftarPDalam()),
                            );
                          },
                          icon: Image(
                              image: AssetImage('assets/penyakitdalam.png')),
                        ),
                      ),
                      SizedBox(
                        height: 150,
                        width: 100,
                        child: IconButton(
                          onPressed: () {
                            Navigator.push(
                              context,
                              new MaterialPageRoute(
                                  builder: (context) => new DaftarParu()),
                            );
                          },
                          icon: Image(image: AssetImage('assets/paru.png')),
                        ),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      SizedBox(
                        height: 120,
                        width: 100,
                        child: IconButton(
                          onPressed: () {
                            Navigator.push(
                              context,
                              new MaterialPageRoute(
                                  builder: (context) => new DaftarSaraf()),
                            );
                          },
                          icon: Image(image: AssetImage('assets/saraf.png')),
                        ),
                      ),
                      SizedBox(
                        height: 150,
                        width: 100,
                        child: IconButton(
                          onPressed: () {
                            Navigator.push(
                              context,
                              new MaterialPageRoute(
                                  builder: (context) => new DaftarGigi()),
                            );
                          },
                          icon: Image(image: AssetImage('assets/gigi.png')),
                        ),
                      ),
                      SizedBox(
                        height: 150,
                        width: 100,
                        child: IconButton(
                          onPressed: () {
                            Navigator.push(
                              context,
                              new MaterialPageRoute(
                                  builder: (context) => new DaftarMata()),
                            );
                          },
                          icon: Image(image: AssetImage('assets/mata.png')),
                        ),
                      ),
                      SizedBox(
                        height: 150,
                        width: 100,
                        child: IconButton(
                          onPressed: () {
                            Navigator.push(
                              context,
                              new MaterialPageRoute(
                                  builder: (context) => new DaftarTHT()),
                            );
                          },
                          icon: Image(image: AssetImage('assets/tht.png')),
                        ),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      SizedBox(
                        height: 120,
                        width: 100,
                        child: IconButton(
                          onPressed: () {
                            Navigator.push(
                              context,
                              new MaterialPageRoute(
                                  builder: (context) => new DaftarBedahUmum()),
                            );
                          },
                          icon: Image(image: AssetImage('assets/bedah.png')),
                        ),
                      ),
                      SizedBox(
                        height: 150,
                        width: 100,
                        child: IconButton(
                          onPressed: () {
                            Navigator.push(
                              context,
                              new MaterialPageRoute(
                                  builder: (context) => new DaftarJantung()),
                            );
                          },
                          icon: Image(image: AssetImage('assets/jantung.png')),
                        ),
                      ),
                      SizedBox(
                        height: 150,
                        width: 100,
                        child: IconButton(
                          onPressed: () {
                            Navigator.push(
                              context,
                              new MaterialPageRoute(
                                  builder: (context) => new DaftarJiwa()),
                            );
                          },
                          icon: Image(image: AssetImage('assets/jiwa.png')),
                        ),
                      ),
                      SizedBox(
                        height: 150,
                        width: 100,
                        child: IconButton(
                          onPressed: () {
                            Navigator.push(
                              context,
                              new MaterialPageRoute(
                                  builder: (context) => new DaftarGizi()),
                            );
                          },
                          icon: Image(image: AssetImage('assets/gizi.png')),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
