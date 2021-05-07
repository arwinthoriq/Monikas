import 'package:flutter/material.dart';
import 'package:Monikas/nav-drawer.dart';
import 'insert.dart';
import 'data.dart';
//import 'package:Monikas/home_page.dart';
//import 'package:Monikas/BottomNavPage.dart';

class LaporankeuanganPage extends StatefulWidget {
  static String tag = 'laporankeuangan-page';
  LaporankeuanganPage({Key key}) : super(key: key);

  @override
  _LaporankeuanganPageState createState() => _LaporankeuanganPageState();
}

class _LaporankeuanganPageState extends State<LaporankeuanganPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Monikas',
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 17,
                  color: Colors.white)),
          backgroundColor: Colors.lightBlue,
          actions: <Widget>[
            FlatButton(
              onPressed: () {
                // action tombol ADD untuk proses insert
                // nilai yang dikirim diisi null
                // agar di halaman insert tahu jika null berarti operasi insert data
                // jika tidak null maka update data
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) =>
                            Insert(index: null, value: null))).then((value) {
                  // jika halaman insert ditutup ambil kembali Shared Preferences
                  // untuk mendapatkan data terbaru dan segera ditampilkan ke user
                  // misal jika ada data customer yang ditambahkan
                  getSavedData();
                });
              },
              child: Text(
                'ADD',
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 15,
                    color: Colors.white),
              ),
            )
          ],
        ),
        drawer: DrawerWidget(),
        body: Padding(
          padding: EdgeInsets.fromLTRB(20, 20, 20, 20),
          child: ListView.builder(
              itemCount: savedData.length,
              itemBuilder: (context, index) {
                return ListTile(
                  title: Text(savedData[index]['name']),
                  subtitle: Text(savedData[index]['address'] +
                      ' ' +
                      savedData[index]['phone']),
                  contentPadding: EdgeInsets.fromLTRB(0, 0, 0, 0),
                  onTap: () {
                    // aksi saat user klik pada item customer pada list view
                    // nilai diisi selain null menandakan di halaman insert operasi yang berjalan adalah update atau delete
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => Insert(
                                index: index,
                                value: savedData[index]))).then((value) {
                      // jika halaman insert ditutup ambil kembali Shared Preferences
                      // untuk mendapatkan data terbaru dan segera ditampilkan ke user
                      // misal jika ada data customer yang diedit atau dihapus
                      getSavedData();
                    });
                  },
                );
              }),
        ));
  }

  // data customer yang akan ditampilkan di list view
  // beri nilai awal berupa list kosong agar tidak error
  // nantinya akan diisi data dari Shared Preferences
  var savedData = [];

  // method untuk mengambil data Shared Preferences
  getSavedData() async {
    var data = await Data.getData();
    // setelah data didapat panggil setState agar data segera dirender
    setState(() {
      savedData = data;
    });
  }

  // init state ini dipanggil pertama kali oleh flutter
  @override
  initState() {
    super.initState();
    // baca Shared Preferences
    getSavedData();
  }
}
