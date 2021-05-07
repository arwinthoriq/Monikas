import 'package:flutter/material.dart';
import 'package:Monikas/nav-drawer.dart';
import 'package:Monikas/laporankeuangan_page.dart';
//import 'package:Monikas/BottomNavPage.dart';

class HomePage extends StatelessWidget {
  static String tag = 'home-page';

  @override
  Widget build(BuildContext context) {
    final lorem01 = Text(
      'Monitoring buku kas',
      style: TextStyle(
          fontSize: 20.0, fontWeight: FontWeight.bold, color: Colors.black),
    );

    final lorem3 = Card(
      elevation: 6, //TINGKAT KETEBALAN SHADOW DARI CARD
      margin: EdgeInsets.all(10),
      child: Padding(
        padding: EdgeInsets.all(20),
        child: Row(
          mainAxisAlignment: MainAxisAlignment
              .spaceAround, //AGAR KEDUA ELEMEN DIDALAMNYA DI SET SEHINGGA MEMILIKI JARAK ANTAR KEDUANYA DAN MEMENUHI CARD
          children: <Widget>[
            Column(
              children: <Widget>[
                //MENAMPILKAN TOTAL ITEM
                Text(
                  "Pemasukan",
                  style: TextStyle(
                      fontWeight: FontWeight.bold, color: Colors.black),
                ),
                Text(
                  "Rp1.000.000",
                  style: TextStyle(
                      fontSize: 20.0,
                      fontWeight: FontWeight.bold,
                      color: Colors.green),
                ),
                SizedBox(
                  height: 20,
                ),
              ],
            ),
            Column(
              children: <Widget>[
                //MENAMPILKAN TOTAL BELANJA
                Text(
                  "Pengeluaran",
                  style: TextStyle(
                      fontSize: 14.0,
                      fontWeight: FontWeight.bold,
                      color: Colors.black),
                ),
                Text(
                  "Rp700.000",
                  style: TextStyle(
                      fontSize: 20.0,
                      fontWeight: FontWeight.bold,
                      color: Colors.red),
                ),
                SizedBox(
                  height: 20,
                ),
              ],
            )
          ],
        ),
      ),
    );

    final lorem4 = Padding(
      padding: const EdgeInsets.only(left: 0.0, right: 0.0, top: 0, bottom: 0),
      child: RaisedButton(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
        ),
        onPressed: () {},
        padding: EdgeInsets.all(12),
        color: Colors.yellow,
        child: Text(
            'Sisa                                             Rp300.000',
            style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 16,
                color: Colors.black)),
      ),
    );

    final lorem5 = Padding(
      padding: const EdgeInsets.only(left: 0.0, right: 0.0, top: 20, bottom: 0),
      child: RaisedButton(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
        ),
        onPressed: () {
          Navigator.of(context).pushNamed(LaporankeuanganPage.tag);
        },
        padding: EdgeInsets.all(12),
        color: Colors.lightBlueAccent,
        child: Text(
            '                      Daftar Keuangan                       ',
            style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 16,
                color: Colors.white)),
      ),
    );

    final welcome = SingleChildScrollView(
      //scrollDirection: Axis.vertical,

      child: DataTable(
        columns: <DataColumn>[
          DataColumn(label: Text("Catatan")),
          DataColumn(label: Text("Rp")),
          DataColumn(label: Text("Tanggal")),
        ],
        rows: <DataRow>[
          DataRow(
            cells: <DataCell>[
              DataCell(Text("beli tas")),
              DataCell(Text(
                "100.000",
              )),
              DataCell(Text("13-12-2020")),
            ],
          ),
          DataRow(
            cells: <DataCell>[
              DataCell(Text("beli tas")),
              DataCell(Text(
                "100.000",
              )),
              DataCell(Text("13-12-2020")),
            ],
          ),
          DataRow(
            cells: <DataCell>[
              DataCell(Text("beli tas")),
              DataCell(Text(
                "100.000",
              )),
              DataCell(Text("13-12-2020")),
            ],
          ),
          DataRow(
            cells: <DataCell>[
              DataCell(Text("")),
              DataCell(Text("")),
              DataCell(Text("")),
            ],
          ),
        ],
      ),
    );

    final body = Container(
      // width: MediaQuery.of(context).size.width,
      padding: EdgeInsets.all(10.0),
      decoration: BoxDecoration(
        gradient: LinearGradient(colors: [
          Colors.white,
          Colors.white,
          // Colors.blue,
          // Colors.lightBlueAccent,
        ]),
      ),
      child: Column(
        children: <Widget>[lorem01, lorem3, lorem4, lorem5, welcome],
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
