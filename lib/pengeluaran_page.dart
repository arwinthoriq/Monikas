import 'package:flutter/material.dart';
import 'package:Monikas/nav-drawer.dart';
//import 'package:Monikas/inputpemasukan_page.dart';
import 'insert_pengeluaran.dart';
import 'data_pengeluaran.dart';
//import 'SelectTypeSection.dart';
//import 'pemasukanhalaman.dart';
//import 'package:Monikas/home_page.dart';
//import 'package:Monikas/BottomNavPage.dart';

class PengeluaranPage extends StatefulWidget {
  static String tag = 'Pengeluaran-page';
  PengeluaranPage({Key key}) : super(key: key);

  @override
  _PengeluaranPageState createState() => _PengeluaranPageState();
}

class _PengeluaranPageState extends State<PengeluaranPage> {
  @override
  Widget build(BuildContext context) {
    var redLight = Color(0xFFf2dcdf);
    return Scaffold(
        appBar: AppBar(
          //       title: Text('Pemasukan',
          //         style: TextStyle(
          //           fontWeight: FontWeight.bold,
          //         fontSize: 17,
          //       color: Colors.white)),
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
                                Insertkeluar(index: null, value: null)))
                    .then((value) {
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
        // body: Pemsaukanhalaman(),
        body: new Column(
          children: <Widget>[
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
            // SizedBox(height: 30.0),
            new Container(
              // margin: EdgeInsets.fromLTRB(15.0, 20.0, 15.0, 10.0),
              decoration: BoxDecoration(
                color: redLight,
                // borderRadius: BorderRadius.circular(4.0)
              ),
              child: Padding(
                padding: const EdgeInsets.fromLTRB(0, 20, 0, 20),

                //padding: const EdgeInsets.symmetric(
                //  horizontal: 10.0, vertical: 20.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    // new Center(
                    Text('Daftar Pengeluaran',
                        // textAlign: TextAlign.center,
                        style: TextStyle(
                            //fontWeight: FontWeight.bold,
                            fontSize: 17,
                            //  color: red,
                            // fontWeight: FontWeight.w600
                            fontFamily: "NeoSansBold"))
                    //  ),
                  ],
                ),
              ),
            ),
            SizedBox(height: 10.0),
            new Expanded(
              child: ListView.builder(
                  itemCount: savedData.length,
                  itemBuilder: (context, index) {
                    return Card(
                      child: ListTile(
                        title: Text(savedData[index]['nama']),
                        subtitle: Text(savedData[index]['harga'] +
                            ' / ' +
                            savedData[index]['keterangan']),
                        contentPadding: EdgeInsets.fromLTRB(25, 0, 0, 0),
                        //  margin: EdgeInsets.fromLTRB(15.0, 20.0, 15.0, 10.0),
                        onTap: () {
                          // aksi saat user klik pada item customer pada list view
                          // nilai diisi selain null menandakan di halaman insert operasi yang berjalan adalah update atau delete
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => Insertkeluar(
                                      index: index,
                                      value: savedData[index]))).then((value) {
                            // jika halaman insert ditutup ambil kembali Shared Preferences
                            // untuk mendapatkan data terbaru dan segera ditampilkan ke user
                            // misal jika ada data customer yang diedit atau dihapus
                            getSavedData();
                          });
                        },
                      ),
                    );
                  }),
            )
          ],
        )
        // SelectTypeSection(),
        );
  }

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

  // method untuk mengambil data Shared Preferences
  getSavedData() async {
    var data = await Dataluar.getData();
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
