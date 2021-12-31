import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:hayates/main.dart';

class heskodusorgula extends StatelessWidget {
  const heskodusorgula({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.lightGreen,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(Icons.home),
                Text("HAYAT EVET SIĞAR"),
              ],
            ),
            IconButton(onPressed: () {}, icon: Icon(Icons.error_outline)),
          ],
        ),
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 30),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children:
              [Flexible(
                child: Padding(
                  padding: const EdgeInsets.all(12.0),
                  child: Text("HES Kodunuzu Yazarak Sorgulayın",style: TextStyle(fontSize: 30),textAlign: TextAlign.center,),
                ),
              )],),
          ),
          Padding(
            padding: const EdgeInsets.only(bottom: 350),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children:
              [Flexible(
                child: Padding(
                  padding: const EdgeInsets.all(12.0),
                  child: Text("Kendinizin ve sevdiklerinizin sağlığı HES kodu sorgulama ile güvence altında.",style: TextStyle(fontSize: 24,color: Colors.grey),textAlign: TextAlign.center, ),
                ),
              )],),
          ),
          GestureDetector(
            onTap: () {

            },
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(1000),
                        color: Colors.green.shade600,
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Icon(
                          Icons.qr_code_scanner,
                          color: Colors.white60,
                          size: 80,
                        ),
                      ),
                      width: 100,
                      height: 100,
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 12),
                      child: Text(
                        "KARE KOD SORGULA",
                        style: TextStyle(fontSize: 25, color: Colors.grey),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
