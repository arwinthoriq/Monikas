import 'package:flutter/material.dart';
//import 'package:Monikas/nav-drawer.dart';
//import 'package:Monikas/inputpemasukan_page.dart';

//import 'insert_pemasukan.dart';
//import 'data_pemasukan.dart';
import 'pemasukan_page.dart';

//import 'package:Monikas/home_page.dart';
//import 'package:Monikas/BottomNavPage.dart';
class Pemasukanhalaman extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Flutter Demo'),
        ),
        body: Container(
          child: PemasukanPage(),
        ));
  }
}
