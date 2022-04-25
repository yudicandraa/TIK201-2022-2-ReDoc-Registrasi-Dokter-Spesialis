import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:redoc/beranda.dart';
import 'package:redoc/pilihdokter.dart';

class RekamMedis extends StatefulWidget {
  const RekamMedis({Key? key}) : super(key: key);

  @override
  State<RekamMedis> createState() => _RekamMedisState();
}

class _RekamMedisState extends State<RekamMedis> {
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
                Image(image: AssetImage('assets/textRM.png')),
                Text(
                  'No. RM : ',
                  style: TextStyle(
                      fontFamily: 'PoppinsRegular',
                      fontSize: 14,
                      color: Color(0xff000000)),
                ),
                SizedBox(
                  height: 50,
                ),
                Text(
                  'Konsultasi',
                  style: TextStyle(
                      fontFamily: 'Poppins',
                      fontSize: 16,
                      color: Color(0xff000000)),
                ),
                SizedBox(
                  height: 20,
                ),
                Image(image: AssetImage('assets/diagnosa.png')),
                Container(
                  margin: const EdgeInsets.only(top: 10),
                  child: SizedBox(
                    height: 100,
                    width: 150,
                    child: IconButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          new MaterialPageRoute(
                              builder: (context) => new Home()),
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
