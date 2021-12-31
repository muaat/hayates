import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:hayates/main.dart';

class heskodlarim extends StatelessWidget {
  const heskodlarim({Key? key}) : super(key: key);

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

        Row(
          mainAxisAlignment: MainAxisAlignment.center,
    children:
        [Padding(
          padding: const EdgeInsets.all(12.0),
          child: Text("HES KODLARIM",),
        ),

        ],),
        Padding(
          padding: const EdgeInsets.only(bottom: 550),
          child: Row(mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text("HES KODUNUZ YOK"),
            ],
          ),
        ),
        GestureDetector(
          onTap: (){
          },
          child: Row(mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Column(mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Container(decoration: BoxDecoration(borderRadius: BorderRadius.circular(1000),color: Colors.green.shade600,),child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Icon(Icons.add,size: 80,),
                  ),width: 100,height: 100,),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 12),
                    child: Text("YENİ KOD EKLE",style: TextStyle(fontSize: 25,color: Colors.grey),),
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


