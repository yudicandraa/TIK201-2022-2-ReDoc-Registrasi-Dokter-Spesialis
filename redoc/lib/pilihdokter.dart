import 'package:flutter/material.dart';
import 'package:redoc/beranda.dart';
import 'package:redoc/kandungan.dart';
import 'package:redoc/paru.dart';
import 'package:redoc/utama.dart';

class PilihDokter extends StatefulWidget {
  const PilihDokter({Key? key}) : super(key: key);

  @override
  State<PilihDokter> createState() => _PilihDokterState();
}

class _PilihDokterState extends State<PilihDokter> {
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
                              builder: (context) => new Home()),
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
                                  builder: (context) =>
                                      new PenyakitKandungan()),
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
                                  builder: (context) => new PenyakitAnak()),
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
                                  builder: (context) => new Home()),
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
                                  builder: (context) => new PenyakitParu()),
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
                                  builder: (context) => new Home()),
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
                                  builder: (context) => new Home()),
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
                                  builder: (context) => new Home()),
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
                                  builder: (context) => new Home()),
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
                                  builder: (context) => new Home()),
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
                                  builder: (context) => new Home()),
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
                                  builder: (context) => new Home()),
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
                                  builder: (context) => new Home()),
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
