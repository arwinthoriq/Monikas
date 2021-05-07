import 'package:flutter/material.dart';
import 'package:Monikas/nav-drawer.dart';
//import 'package:Monikas/pengeluaran_page.dart';
//import 'package:Monikas/BottomNavPage.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:Monikas/login_page.dart';
//import 'package:fluttersharedpreferences/main.dart';

class ProfilPage extends StatefulWidget {
  static String tag = 'profil-page';
  @override
  _ProfilPageState createState() => new _ProfilPageState();
}

class _ProfilPageState extends State<ProfilPage> {
  SharedPreferences logindata;
  String username;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    initial();
  }

  void initial() async {
    logindata = await SharedPreferences.getInstance();
    setState(() {
      username = logindata.getString('username');
    });
  }

  @override
  Widget build(BuildContext context) {
    var green = Color(0xFF4caf6a);
    var greenLight = Color(0xFFd8ebde);

    var red = Color(0xFFf36169);
    var redLight = Color(0xFFf2dcdf);
    final warna = Row(
      children: <Widget>[
        Expanded(
          child: Container(
            padding: EdgeInsets.all(20),
            color: greenLight,
          ),
        ),
        Expanded(
          child: Container(
            padding: EdgeInsets.all(20),
            color: redLight,
          ),
        ),
      ],
    );
    final alucard = Center(
      child: Text(
        'Selamat Datang',
        style: TextStyle(
            fontSize: 30.0, fontWeight: FontWeight.bold, color: Colors.black),
      ),
    );

    final welcome = Center(
      //if (logindata != null) {
      child: Text(
        //'${logindata.get('username')} ',
        '',
        // '${logindata.get('username')}',
        //  logindata.get(username),
        //  ${localStorage.get('email')}
        //     title: Text(savedData[index]['nama']),
        style: TextStyle(
            fontSize: 30.0, fontWeight: FontWeight.bold, color: Colors.black),
      ),
      //     }
    );

    final logout = Padding(
        padding: EdgeInsets.all(0),
        child: RaisedButton(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(30),
          ),
          onPressed: () {
            logindata.setBool('login', true);
            Navigator.pushReplacement(context,
                new MaterialPageRoute(builder: (context) => LoginPage()));
          },
          //  child: Text('LogOut'),
          padding: EdgeInsets.all(12),
          color: Colors.red,
          child: Text('Log Out', style: TextStyle(color: Colors.white)),
        ));

    final body = Container(
      child: Column(
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
          warna,
          SizedBox(height: 20.0),
          alucard,
          welcome,
          SizedBox(height: 20.0),
          logout
        ],
      ),
    );

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.lightBlue,
      ),
      drawer: DrawerWidget(),
      body: body,
    );
  }
}
