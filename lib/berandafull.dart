import 'package:flutter/material.dart';
import 'package:Monikas/nav-drawer.dart';
//import 'package:Monikas/inputpemasukan_page.dart';
//import 'insert_pemasukan.dart';
//import 'data_pemasukan.dart';
//import 'SelectTypeSection.dart';
//import 'pemasukanhalaman.dart';
//import 'package:Monikas/home_page.dart';
//import 'package:Monikas/BottomNavPage.dart';

class Berandafull extends StatefulWidget {
  static String tag = 'Berandafull-page';
  Berandafull({Key key}) : super(key: key);

  @override
  _BerandafullState createState() => _BerandafullState();
}

class _BerandafullState extends State<Berandafull> {
  @override
  Widget build(BuildContext context) {
    var green = Color(0xFF4caf6a);
    var greenLight = Color(0xFFd8ebde);

    var red = Color(0xFFf36169);
    var redLight = Color(0xFFf2dcdf);

    var blue = Color(0xFF398bcf);
    var blueLight = Color(0xFFc1dbee);
    // final height = MediaQuery.of(context).size.height;
    // final width = MediaQuery.of(context).size.width;
    final atas = Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8.0),
      child: SingleChildScrollView(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            //   SizedBox(height: 16.0),
            Expanded(
              child: Container(
                height: 92.0,
                width: 120.0,
                color: greenLight,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Icon(
                      Icons.dashboard,
                      color: green,
                    ),
                    SizedBox(
                      height: 4.0,
                    ),
                    Text(
                      'Special Menu',
                      style:
                          TextStyle(color: green, fontWeight: FontWeight.w500),
                    )
                  ],
                ),
              ),
            ),
            Container(
              height: 92.0,
              width: 120.0,
              color: redLight,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Icon(
                    Icons.dashboard,
                    color: red,
                  ),
                  SizedBox(
                    height: 4.0,
                  ),
                  Text(
                    'Book a Table',
                    style: TextStyle(color: red, fontWeight: FontWeight.w500),
                  )
                ],
              ),
            ),
            Container(
              height: 92.0,
              width: 124.0,
              color: blueLight,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Icon(
                    Icons.dashboard,
                    color: blue,
                  ),
                  SizedBox(
                    height: 4.0,
                  ),
                  Text(
                    'Caterings',
                    style: TextStyle(color: blue, fontWeight: FontWeight.w500),
                  )
                ],
              ),
            ),
            //MenuItemsList(),
          ],
        ),
      ),
    );
    final tengah = Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8.0),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Container(
            child: Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Container(
                    decoration: BoxDecoration(
                        color: Colors.greenAccent,
                        borderRadius: BorderRadius.circular(4.0)),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 8.0, vertical: 4.0),
                      child: Row(
                        children: <Widget>[
                          Icon(
                            Icons.star,
                            size: 15.0,
                          ),
                          Text('4.5')
                        ],
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 8.0,
                  ),
                  Text(
                    'Special Chicken Burger',
                    style: TextStyle(fontWeight: FontWeight.w600),
                  ),
                  Container(
                      width: 200.0,
                      child: Text(
                        'Chicken, Yogurt, Red chilli, Ginger paste, Carlic paste, ...',
                        style: TextStyle(color: Colors.grey),
                      )),
                ],
              ),
            ),
          )
          //  SizedBox(height: 16.0),
          //  MenuItem(),
          //MenuItem(),
        ],
      ),
    );

    final body = Container(
      // width: MediaQuery.of(context).size.width,
      child: ListView(
        children: <Widget>[
          SizedBox(height: 16.0),
          atas,
          SizedBox(height: 16.0),
          tengah,
          //    SizedBox(height: 16.0),
          //  bawah
        ],
      ),
    );

    return Scaffold(
      appBar: AppBar(
        title: Text('Beranda',
            style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 17,
                color: Colors.white)),
        backgroundColor: Colors.lightBlue,
      ),
      drawer: DrawerWidget(),
      //floatingActionButton: MyActionButton(),
      //floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      //bottomNavigationBar: MyAppbar(),
      body: body,
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
