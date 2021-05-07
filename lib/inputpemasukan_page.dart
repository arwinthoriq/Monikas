import 'package:flutter/material.dart';
import 'package:Monikas/nav-drawer.dart';
import 'package:Monikas/pemasukan_page.dart';
//import 'package:Monikas/BottomNavPage.dart';

class InputpemasukanPage extends StatelessWidget {
  static String tag = 'inputpemasukan-page';

  @override
  Widget build(BuildContext context) {
    final lorem3 = Center(
      child: Text(
        'Tambah Pemasukan',
        style: TextStyle(
            fontSize: 25.0, fontWeight: FontWeight.bold, color: Colors.black),
      ),
    );

    final nama = TextFormField(
      keyboardType: TextInputType.text,
      autofocus: false,
      initialValue: '',
      decoration: InputDecoration(
        hintText: 'Nama',
        contentPadding: EdgeInsets.fromLTRB(30.0, 20.0, 20.0, 20.0),
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(12.0)),
      ),
    );
    final nominal = TextFormField(
      keyboardType: TextInputType.text,
      autofocus: false,
      initialValue: '',
      decoration: InputDecoration(
        hintText: 'Nominal',
        contentPadding: EdgeInsets.fromLTRB(20.0, 20.0, 20.0, 20.0),
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(12.0)),
      ),
    );
    final catatan = TextFormField(
      keyboardType: TextInputType.text,
      autofocus: false,
      initialValue: '',
      decoration: InputDecoration(
        hintText: 'Catatan',
        contentPadding: EdgeInsets.fromLTRB(20.0, 20.0, 20.0, 20.0),
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(12.0)),
      ),
    );

    final tambahButton = Padding(
      padding: EdgeInsets.symmetric(vertical: 16.0),
      child: RaisedButton(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(14),
        ),
        onPressed: () {
          Navigator.of(context).pushNamed(PemasukanPage.tag);
        },
        padding: EdgeInsets.all(17),
        color: Colors.greenAccent,
        child: Text('Tambah',
            style: TextStyle(
                fontSize: 20.0,
                color: Colors.black,
                fontWeight: FontWeight.bold)),
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
          nama,
          SizedBox(height: 14.0),
          nominal,
          SizedBox(height: 14.0),
          catatan,
          SizedBox(height: 14.0),
          tambahButton
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
