import 'package:flutter/material.dart';
import 'package:redoc/pilihdokter.dart';

class NomorAntrian extends StatefulWidget {
  const NomorAntrian({Key? key}) : super(key: key);

  @override
  State<NomorAntrian> createState() => _NomorAntrianState();
}

class _NomorAntrianState extends State<NomorAntrian> {
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
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
