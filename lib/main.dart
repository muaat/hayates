import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:hayates/cart.dart';
import 'package:hayates/heskodlar.dart';
import 'package:hayates/heskodusorgula.dart';

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
            IconButton(onPressed: () {}, icon: Icon(Icons.menu)),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(Icons.home),
                Text("HAYAT EVET SIĞAR"),
              ],
            ),
            IconButton(onPressed: () {}, icon: Icon(Icons.repeat)),
          ],
        ),
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 15),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                GestureDetector(
                  onTap: (){
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const heskodusorgula()),
                    );
                  },
                  child: kart(
                      Icon(
                        Icons.qr_code_scanner,
                        size: 50,
                        color: Colors.white,
                      ),
                      "HES Kodunu Sorgula"),
                ),
                GestureDetector(
                  onTap: (){
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const heskodlarim()),
                    );
                  },
                  child: kart(
                      Icon(
                        Icons.saved_search,
                        size: 50,
                        color: Colors.white,
                      ),
                      "HES Kodlarım"),
                ),
                GestureDetector(
                  onTap: (){
                  },
                  child: kart(
                      Icon(
                        Icons.settings_outlined,
                        size: 50,
                        color: Colors.white,
                      ),
                      "HES Kod Ayarları"),
                ),
              ],
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              GestureDetector(
                onTap: (){
                },
                child: kart(
                    Icon(
                      Icons.home,
                      size: 50,
                      color: Colors.white,
                    ),
                    "Covid-19 Aşı Bilgilerim"),
              ),
              GestureDetector(
                onTap: (){
                },
                child: kart(
                    Icon(
                      Icons.flag,
                      size: 50,
                      color: Colors.white,
                    ),
                    "AB Uyumlu Sağlık Pasaportu"),
              ),
              GestureDetector(
                onTap: (){
                },
                child: kart(
                    Icon(
                      Icons.feedback_outlined,
                      size: 50,
                      color: Colors.white,
                    ),
                    "İhbarda Bulun"),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              GestureDetector(
                onTap: (){
                },
                child: kart(
                    Icon(
                      Icons.shield,
                      size: 50,
                      color: Colors.white,
                    ),
                    "Alan Karekodu Okut"),
              ),
              GestureDetector(
                onTap: (){},
                child: kart(
                    Icon(
                      Icons.healing_rounded,
                      size: 50,
                      color: Colors.white,
                    ),
                    "Korona Riskini Hesapla"),
              ),
              GestureDetector(
                onTap: (){
                },
                child: kart(
                    Icon(
                      Icons.visibility,
                      size: 50,
                      color: Colors.white,
                    ),
                    "Durumumu Güncelle"),
              ),
            ],
          ),
        ],
      ),
      bottomNavigationBar: BottomAppBar(
        shape: CircularNotchedRectangle(),
        child: Container(
          height: 65,
          child: Row(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: <Widget>[
              Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  IconButton(
                    iconSize: 30.0,
                    //padding: EdgeInsets.only(left: 28.0),
                    icon: Icon(
                      Icons.home,
                      color: Colors.grey,
                    ),
                    onPressed: () {
                      setState(() {});
                    },
                  ),
                  Text(
                    "Ana Sayfa",
                    style: TextStyle(color: Colors.grey),
                  ),
                ],
              ),
              Column(
                children: [
                  IconButton(
                    iconSize: 30.0,
                    //padding: EdgeInsets.only(right: 28.0),
                    icon: Icon(
                      Icons.explore,
                      color: Colors.grey,
                    ),
                    onPressed: () {
                      setState(() {});
                    },
                  ),
                  Text(
                    "Yoğunluk",
                    style: TextStyle(color: Colors.grey),
                  ),
                ],
              ),
              Column(
                children: [
                  IconButton(
                    iconSize: 30.0,
                    //padding: EdgeInsets.only(left: 28.0),
                    icon: Icon(
                      Icons.groups,
                      color: Colors.grey,
                    ),
                    onPressed: () {
                      setState(() {});
                    },
                  ),
                  Text(
                    "Yakınlarım",
                    style: TextStyle(color: Colors.grey),
                  ),
                ],
              ),
              Column(
                children: [
                  IconButton(
                    iconSize: 30.0,
                    //padding: EdgeInsets.only(right: 28.0),
                    icon: Icon(
                      Icons.account_circle_rounded,
                      color: Colors.grey,
                    ),
                    onPressed: () {
                      setState(() {});
                    },
                  ),
                  Text(
                    "Hesabım",
                    style: TextStyle(color: Colors.grey),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
