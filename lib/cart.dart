import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class kart extends StatelessWidget {
  kart(this.fonksiyon,this.ikon,this.text);
  final Function fonksiyon;
  final Icon ikon;
  final text;


  @override
  Widget build(BuildContext context) {
    return Row(
      children: [

        FloatingActionButton.extended(onPressed: fonksiyon(),icon: ikon, label: text, ),
      ],
    );
  }
}
