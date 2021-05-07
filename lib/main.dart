import 'package:flutter/material.dart';
import 'forgot_page.dart';
import 'register_page.dart';
import 'login_page.dart';
import 'home_page.dart';
import 'pemasukan_page.dart';
import 'pengeluaran_page.dart';
import 'inputpemasukan_page.dart';
import 'inputpengeluaran_page.dart';
import 'laporankeuangan_page.dart';
import 'bantuan_page.dart';
import 'profil_page.dart';
import 'nav-drawer.dart';
//import 'SelectTypeSection.dart';
import 'Beranda.dart';
import 'dashboard.dart';
//import 'BottomNavPage.dart';

//void main() => runApp(MyApp());

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    theme: ThemeData(
      primarySwatch: Colors.lightBlue,
      fontFamily: 'Nunito',
    ),

    home: LoginPage(),
    // initialRoute: '/',
    routes: <String, WidgetBuilder>{
      ForgotPage.tag: (context) => ForgotPage(),
      RegisterPage.tag: (context) => RegisterPage(),
      LoginPage.tag: (context) => LoginPage(),
      HomePage.tag: (context) => HomePage(),
      PemasukanPage.tag: (context) => PemasukanPage(),
      PengeluaranPage.tag: (context) => PengeluaranPage(),
      InputpemasukanPage.tag: (context) => InputpemasukanPage(),
      InputpengeluaranPage.tag: (context) => InputpengeluaranPage(),
      LaporankeuanganPage.tag: (context) => LaporankeuanganPage(),
      BantuanPage.tag: (context) => BantuanPage(),
      ProfilPage.tag: (context) => ProfilPage(),
      // SelectTypeSection.tag: (context) => SelectTypeSection(),
      Beranda.tag: (context) => Beranda(),
      Dashboard.tag: (context) => Dashboard(),
      // BottomNavPage.tag: (context) => BottomNavPage(),
    },
  ));
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Monikas"),
      ),
      //  drawer: DrawerWidget(),
      //endDrawer: DrawerWidget(),
      //     body: Center(
      //       child: Text('Belajar Navigation Drawer di Flutter',
      //         style: TextStyle(fontSize: 20))),
    );
  }
}
