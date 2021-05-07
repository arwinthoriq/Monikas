import 'package:flutter/material.dart';
import 'package:Monikas/nav-drawer.dart';
//import 'package:Monikas/inputpemasukan_page.dart';
//import 'insert_pemasukan.dart';
import 'data_pemasukan.dart';
import 'insert_pemasukan.dart';
//import 'insert_pengeluaran.dart';
import 'data_pengeluaran.dart';
import 'insert_pengeluaran.dart';
//import 'SelectTypeSection.dart';
//import 'pemasukanhalaman.dart';
//import 'package:Monikas/home_page.dart';
//import 'package:Monikas/BottomNavPage.dart';

class Dashboard extends StatefulWidget {
  static String tag = 'Dashboard-page';
  Dashboard({Key key}) : super(key: key);

  @override
  _DashboardState createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  var tgl = new DateTime.now();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          // title: Text('Pemasukan',
          //          style: TextStyle(
          //            fontWeight: FontWeight.bold,
          //          fontSize: 17,
          //        color: Colors.white)),
          backgroundColor: Colors.lightBlue,
        ),
        drawer: DrawerWidget(),
        // body: Pemsaukanhalaman(),
        body: Column(
          //          child: SingleChildScrollView(
          //     child: Row(
          children: <Widget>[
            //    Row(

            new Container(
              padding: EdgeInsets.all(12.0),
              decoration: new BoxDecoration(
                  gradient: LinearGradient(
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                    colors: [const Color(0xff3164bd), const Color(0xff295cb5)],
                  ),
                  borderRadius: new BorderRadius.only(
                      topLeft: new Radius.circular(0),
                      topRight: new Radius.circular(0))),
              child: new Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  new Text(
                    "MONIKAS",
                    style: new TextStyle(
                        fontSize: 18.0,
                        color: Colors.white,
                        fontFamily: "NeoSansBold"),
                  ),
                ],
              ),
            ),

            //    new Container(

            //   ),
            //     Expanded(
            Row(
              children: <Widget>[
                //  Padding(
                //  padding: const EdgeInsets.symmetric(
                //    horizontal: 0, vertical: 40.0),

                // child: Icon(Icons.create, size: 72.0),
                //),
                Expanded(
                  child: Container(
                    height: 72.0,
                    width: 120.0,
                    color: greenLight,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        SizedBox(
                          height: 4.0,
                        ),
                        Text(
                          'Pemasukan',
                          style: TextStyle(
                            //  color: green,
                            fontSize: 20,
                            //   fontFamily: "NeoSansBold",
                            fontWeight: FontWeight.bold,
                            //fontWeight: FontWeight.w500
                          ),
                        )
                      ],
                    ),
                  ),
                ),
                Expanded(
                  child: Container(
                    height: 72.0,
                    width: 120.0,
                    color: redLight,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        SizedBox(
                          height: 4.0,
                        ),
                        Text(
                          'Pengeluaran',
                          style: TextStyle(
                            //     color: green,
                            fontSize: 20,
                            // fontFamily: "NeoSansBold",
                            fontWeight: FontWeight.bold,
                            // fontWeight: FontWeight.w500
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ],
            ),
            //   ),
            //   SizedBox(height: 10.0),
            Row(
              children: <Widget>[
                Expanded(
                  child: Container(
                    //   height: 40.0,
                    //width: 50.0,

                    //   color: greenLight,
                    child: FlatButton(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(0),
                      ),
                      onPressed: () {
                        // action tombol ADD untuk proses insert
                        // nilai yang dikirim diisi null
                        // agar di halaman insert tahu jika null berarti operasi insert data
                        // jika tidak null maka update data
                        Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) =>
                                        Insertmasuk(index: null, value: null)))
                            .then((value) {
                          // jika halaman insert ditutup ambil kembali Shared Preferences
                          // untuk mendapatkan data terbaru dan segera ditampilkan ke user
                          // misal jika ada data customer yang ditambahkan
                          getSavedData();
                        });
                      },
                      padding: EdgeInsets.all(15),
                      color: greenLight,
                      child: Text('ADD', style: TextStyle(color: Colors.black)),
                    ),
                  ),
                ),
                Expanded(
                  child: Container(
                    //  height: 40.0,
                    //  width: 120.0,
                    //  color: redLight,
                    child: FlatButton(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(0),
                      ),
                      onPressed: () {
                        // action tombol ADD untuk proses insert
                        // nilai yang dikirim diisi null
                        // agar di halaman insert tahu jika null berarti operasi insert data
                        // jika tidak null maka update data
                        Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) =>
                                        Insertkeluar(index: null, value: null)))
                            .then((value) {
                          // jika halaman insert ditutup ambil kembali Shared Preferences
                          // untuk mendapatkan data terbaru dan segera ditampilkan ke user
                          // misal jika ada data customer yang ditambahkan
                          getSavedData();
                        });
                      },
                      padding: EdgeInsets.all(15),
                      color: redLight,
                      child: Text('ADD', style: TextStyle(color: Colors.black)),
                    ),
                  ),
                ),
              ],
            ),

            //     ),
            // ),
            //  ),

            SizedBox(height: 20.0),
            Center(
              child: Text(
                'Monitoring Buku Kas',
                style: TextStyle(
                    fontSize: 20.0,
                    // fontWeight: FontWeight.bold,
                    color: Colors.black),
              ),
            ),
            SizedBox(height: 10.0),
            Row(
              children: <Widget>[
                Expanded(
                  child: Container(
                    padding: EdgeInsets.all(8),
                    color: greenLight,
                  ),
                ),
                Expanded(
                  child: Container(
                    padding: EdgeInsets.all(8),
                    color: redLight,
                  ),
                ),
              ],
            ),

            //tempat data pemasukan dan data pengeluaran
            Expanded(
              child: Row(
                children: <Widget>[
                  Expanded(
                    child: ListView.builder(
                        itemCount: savedData.length,
                        itemBuilder: (
                          context,
                          index,
                        ) {
                          return Card(
                            child: ListTile(
                              title: Text(savedData[index]['nama']),
                              subtitle: Text(savedData[index]['harga'] +
                                  ' / ' +
                                  savedData[index]['keterangan']),
                              contentPadding: EdgeInsets.fromLTRB(25, 0, 0, 0),
                              //  margin: EdgeInsets.fromLTRB(15.0, 20.0, 15.0, 10.0),
                            ),
                          );
                        }),
                  ),
                  Expanded(
                    child: ListView.builder(
                        itemCount: savedDataluar.length,
                        itemBuilder: (
                          context,
                          index,
                        ) {
                          return Card(
                            child: ListTile(
                              title: Text(savedDataluar[index]['nama']),
                              subtitle: Text(savedDataluar[index]['harga'] +
                                  ' / ' +
                                  savedDataluar[index]['keterangan']),
                              contentPadding: EdgeInsets.fromLTRB(25, 0, 0, 0),
                              //  margin: EdgeInsets.fromLTRB(15.0, 20.0, 15.0, 10.0),
                            ),
                          );
                        }),
                  )
                ],
              ),
            ),
          ],
        )
        // SelectTypeSection(),
        );
  }

  var ungu = Color(0xff3164bd);
  var ungua = Color(0xff295cb5);

  var green = Color(0xFF4caf6a);
  var greenLight = Color(0xFFd8ebde);

  var red = Color(0xFFf36169);
  var redLight = Color(0xFFf2dcdf);

  var blue = Color(0xFF398bcf);
  var blueLight = Color(0xFFc1dbee);
  // data customer yang akan ditampilkan di list view
  // beri nilai awal berupa list kosong agar tidak error
  // nantinya akan diisi data dari Shared Preferences
  var savedData = [];
  var savedDataluar = [];

  // method untuk mengambil data Shared Preferences
  getSavedData() async {
    var data = await Data.getData();
    //  var dataluar = await Dataluar.getData();

    // setelah data didapat panggil setState agar data segera dirender
    setState(() {
      savedData = data;
      //   savedData = dataluar;
    });
  }

  getSavedDataluar() async {
    var dataluar = await Dataluar.getData();

    // setelah data didapat panggil setState agar data segera dirender
    setState(() {
      savedDataluar = dataluar;
    });
  }

  // init state ini dipanggil pertama kali oleh flutter
  @override
  initState() {
    super.initState();
    // baca Shared Preferences
    getSavedData();
    getSavedDataluar();
  }
}
