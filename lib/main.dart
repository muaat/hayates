import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:hayates/cart.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,

      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {


  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.lightGreen,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            IconButton(onPressed: (){}, icon: Icon(Icons.menu)),
            Row(mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(Icons.home),
                Text("HAYAT EVET SIĞAR"),
              ],
            ),
            IconButton(onPressed: (){}, icon: Icon(Icons.repeat)),
          ],
        ),

      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          kart((){},Icon(Icons.qr_code_scanner), Text("HES Kodunu Sorgula"), ),
          kart((){},Icon(Icons.qr_code_scanner), Text("HES Kodunu Sorgula"), ),
          kart((){},Icon(Icons.qr_code_scanner), Text("HES Kodunu Sorgula"), ),
          kart((){},Icon(Icons.qr_code_scanner), Text("HES Kodunu Sorgula"), ),
          kart((){},Icon(Icons.qr_code_scanner), Text("HES Kodunu Sorgula"), ),
          kart((){},Icon(Icons.qr_code_scanner), Text("HES Kodunu Sorgula"), ),
          kart((){},Icon(Icons.qr_code_scanner), Text("HES Kodunu Sorgula"), ),
          kart((){},Icon(Icons.qr_code_scanner), Text("HES Kodunu Sorgula"), ),
          kart((){},Icon(Icons.qr_code_scanner), Text("HES Kodunu Sorgula"), ),

        ],
          ),
      bottomNavigationBar: BottomAppBar(
        shape: CircularNotchedRectangle(),
        child: Container(
          height: 75,
          child: Row(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: <Widget>[
              Column(crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  IconButton(
                    iconSize: 30.0,
                    //padding: EdgeInsets.only(left: 28.0),
                    icon: Icon(Icons.home,color: Colors.grey,),
                    onPressed: () {
                      setState(() {
                      });
                    },
                  ),
                  Text("Ana Sayfa",style: TextStyle(color: Colors.grey),),
                ],
              ),
              Column(
                children: [
                  IconButton(
                    iconSize: 30.0,
                    //padding: EdgeInsets.only(right: 28.0),
                    icon: Icon(Icons.search_outlined,color: Colors.grey,),
                    onPressed: () {
                      setState(() {
                      });
                    },

                  ),
                  Text("Yoğunluk",style: TextStyle(color: Colors.grey),),
                ],
              ),
              Column(
                children: [
                  IconButton(
                    iconSize: 30.0,
                    //padding: EdgeInsets.only(left: 28.0),
                    icon: Icon(Icons.group,color: Colors.grey,),
                    onPressed: () {
                      setState(() {
                      });
                    },
                  ),
                  Text("Yakınlarım",style: TextStyle(color: Colors.grey),),
                ],
              ),
              Column(
                children: [
                  IconButton(
                    iconSize: 30.0,
                    //padding: EdgeInsets.only(right: 28.0),
                    icon: Icon(Icons.account_circle_rounded,color: Colors.grey,),
                    onPressed: () {
                      setState(() {
                      });
                    },
                  ),
                  Text("Hesabım",style: TextStyle(color: Colors.grey),),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
