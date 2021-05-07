import 'package:flutter/material.dart';
import 'package:Monikas/nav-drawer.dart';
//import 'package:Monikas/MenuItemsList.dart';

class SelectTypeSection extends StatefulWidget {
  static String tag = 'SelectTypeSection-page';
  SelectTypeSection({Key key}) : super(key: key);

  @override
  _SelectTypeSectionState createState() => _SelectTypeSectionState();
}

class _SelectTypeSectionState extends State<SelectTypeSection> {
  @override
  Widget build(BuildContext context) {
    // COLORS
    //var textYellow = Color(0xFFf6c24d);
    //var iconYellow = Color(0xFFf4bf47);

    var green = Color(0xFF4caf6a);
    var greenLight = Color(0xFFd8ebde);

    var red = Color(0xFFf36169);
    var redLight = Color(0xFFf2dcdf);

    var blue = Color(0xFF398bcf);
    var blueLight = Color(0xFFc1dbee);
    // final height = MediaQuery.of(context).size.height;
    // final width = MediaQuery.of(context).size.width;
    return Scaffold(
        appBar: AppBar(
          title: Text('SelectTypeSection',
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 17,
                  color: Colors.white)),
          backgroundColor: Colors.lightBlue,
        ),
        drawer: DrawerWidget(),
        body: Padding(
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
                          style: TextStyle(
                              color: green, fontWeight: FontWeight.w500),
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
                        style:
                            TextStyle(color: red, fontWeight: FontWeight.w500),
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
                        style:
                            TextStyle(color: blue, fontWeight: FontWeight.w500),
                      )
                    ],
                  ),
                ),
                //MenuItemsList(),
              ],
            ),
          ),
        ));
  }
}
