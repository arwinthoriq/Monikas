import 'package:flutter/material.dart';
import 'package:Monikas/nav-drawer.dart';
//import 'package:Monikas/pengeluaran_page.dart';
//import 'package:Monikas/BottomNavPage.dart';

class BantuanPage extends StatelessWidget {
  static String tag = 'bantuan-page';

  @override
  Widget build(BuildContext context) {
    final lorem3 = Center(
      child: Text(
        'Cara Penggunaan Aplikasi',
        style: TextStyle(
            fontSize: 25.0, fontWeight: FontWeight.bold, color: Colors.black),
      ),
    );

    final body = Container(
      // width: MediaQuery.of(context).size.width,
      padding: EdgeInsets.all(40.0),
      decoration: BoxDecoration(
        gradient: LinearGradient(colors: [
          Colors.white,
          Colors.white,
          // Colors.blue,
          // Colors.lightBlueAccent,
        ]),
      ),
      child: Column(
        children: <Widget>[
          lorem3,
          SizedBox(height: 28.0),
        ],
      ),
    );

    return Scaffold(
      appBar: AppBar(
        title: Text('Monikas',
            style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 17,
                color: Colors.white)),
      ),
      drawer: DrawerWidget(),
      body: body,
    );
  }
}
