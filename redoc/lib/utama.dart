import 'package:flutter/material.dart';
import 'package:redoc/pilihdokter.dart';

class Utama extends StatelessWidget {
  const Utama({Key? key}) : super(key: key);

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
                      'Halo apa kabar?',
                      style: TextStyle(
                          color: Color(0xff989898),
                          fontFamily: 'PoppinsRegular',
                          fontSize: 12),
                    ),
                    Text(
                      'Yudi Candra',
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
                      new MaterialPageRoute(
                          builder: (context) => new PilihDokter()),
                    );
                  },
                  icon: Image(image: AssetImage('assets/klikdokter.png')),
                  iconSize: 200,
                ),
              ),
            ),
            Container(
                margin: const EdgeInsets.only(top: 10),
                child: Image(image: AssetImage('assets/line.png'))),
            Container(
                margin: const EdgeInsets.only(top: 15),
                child: Image(image: AssetImage('assets/informasi.png'))),
            Container(
                margin: const EdgeInsets.only(top: 10),
                child: Image(image: AssetImage('assets/tentang.png'))),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                    margin: const EdgeInsets.only(top: 20, bottom: 10),
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
