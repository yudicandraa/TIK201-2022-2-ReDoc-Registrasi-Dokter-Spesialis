import 'package:flutter/material.dart';
import 'package:redoc/pilihdokter.dart';

class PenyakitSaraf extends StatefulWidget {
  const PenyakitSaraf({Key? key}) : super(key: key);

  @override
  State<PenyakitSaraf> createState() => _PenyakitSarafState();
}

class _PenyakitSarafState extends State<PenyakitSaraf> {
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
                  child: Image(image: AssetImage('assets/saraf2.png')),
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
                      'Penyakit Saraf',
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
                                  onPressed: () {},
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
                          "Nama Dokter",
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
                            '- ',
                            style: TextStyle(
                                color: Color(0xffffffff),
                                fontFamily: 'PoppinsRegular',
                                fontSize: 16),
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
}
