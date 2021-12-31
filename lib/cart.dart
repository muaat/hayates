import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hayates/heskodlar.dart';

class kart extends StatelessWidget {
  kart(this.ikon, this.text);

  final Icon ikon;
  final text;


  @override
  Widget build(BuildContext context) {
    return Row(
      children: [

        Padding(
          padding: const EdgeInsets.all(5.0),
          child: Container(decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(12),
            color: Colors.lightGreen.shade600,),
            width: 120,
            height: 120,
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 8),
                  child: ikon,
                ),
                Row(mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Flexible(child: Align(
                        alignment: Alignment.center, child: Padding(
                      padding: const EdgeInsets.only(top: 12),
                      child: Text(text, textAlign: TextAlign.center,
                        style: TextStyle(color: Colors.white,),),
                    )))
                  ],),
              ],
            ),),
        ),
      ],
    );
  }
}
