import 'package:flutter/material.dart';
//import 'package:Monikas/nav-drawer.dart';
//import 'package:Monikas/pemasukanhalaman.dart';
//import 'package:Monikas/pemasukan_page.dart';
import 'package:Monikas/berandafull.dart';
//import 'package:Monikas/SelectTypeSection.dart';
//import 'package:Monikas/MenuItemsList.dart';

//class Beranda extends StatefulWidget {
//static String tag = 'Beranda-page';
//Beranda({Key key}) : super(key: key);

//@override
//_BerandaState createState() => _BerandaState();
//}

class Beranda extends StatelessWidget {
  static String tag = 'Beranda-page';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        //floatingActionButton: MyActionButton(),
        //floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
        //bottomNavigationBar: MyAppbar(),
        //body: body,
        //   body: body,
        body: Container(
      child: Berandafull(),
      // PemasukanPage(),
    )

        //    body: Container(
        ///  child: Berandafull(),
        //   PemasukanPage(),
        //  )
//        body: Container(
        //        child: ListView(
        //        children: <Widget>[
        //        SizedBox(height: 16.0),
        //      SelectTypeSection(),
        //    SizedBox(height: 16.0),
        //  MenuItemsList()
        //           ],
        //       ),
        //   )
        );
  }
}
