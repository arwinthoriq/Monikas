import 'package:flutter/material.dart';
//import 'package:Monikas/home_page.dart';
import 'package:Monikas/pemasukan_page.dart';
import 'package:Monikas/pengeluaran_page.dart';
//import 'package:Monikas/bantuan_page.dart';
import 'package:Monikas/profil_page.dart';
//import 'package:Monikas/SelectTypeSection.dart';
//import 'package:Monikas/Beranda.dart';
import 'package:Monikas/dashboard.dart';

class DrawerWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: <Widget>[
          _drawerHeader(),
          _drawerItem(
            icon: Icons.dashboard,
            text: 'Dashboard',
            //           onTap: () {
//              Navigator.of(context).pushNamed(Dashboard.tag);
            //          },
            onTap: () {
              Navigator.pushReplacement(context,
                  MaterialPageRoute(builder: (context) => Dashboard()));
            },
          ),

          ///          _drawerItem(
          ///          icon: Icons.dashboard,
          //        text: 'Beranda',
          //      onTap: () {
          //      Navigator.of(context).pushNamed(Beranda.tag);
          //  },
          //),
//          _drawerItem(
          //          icon: Icons.dashboard,
          //        text: 'Home',
          //      onTap: () {
          //      Navigator.of(context).pushNamed(HomePage.tag);
          //  },
          //),
          _drawerItem(
            icon: Icons.input,
            text: 'Pemasukan',
            onTap: () {
              Navigator.pushReplacement(context,
                  MaterialPageRoute(builder: (context) => PemasukanPage()));
            },
          ),
          _drawerItem(
            icon: Icons.shopping_bag,
            text: 'Pengeluaran',
            onTap: () {
              Navigator.pushReplacement(context,
                  MaterialPageRoute(builder: (context) => PengeluaranPage()));
            },
          ),
          _drawerItem(
            icon: Icons.account_circle,
            text: 'Profil',
            onTap: () {
              Navigator.pushReplacement(context,
                  MaterialPageRoute(builder: (context) => ProfilPage()));
            },
          ),
          //         _drawerItem(
          //         icon: Icons.help,
          //       text: 'Bantuan',
          //     onTap: () {
          //     Navigator.of(context).pushNamed(BantuanPage.tag);
          // },
          // ),
          Divider(height: 25, thickness: 1),
        ],
      ),
    );
  }
}

Widget _drawerHeader() {
  return UserAccountsDrawerHeader(
    currentAccountPicture: ClipOval(
      child: Image(image: AssetImage('assets/alucard.jpg'), fit: BoxFit.cover),
    ),
    accountName: Text('Monikas',
        style: TextStyle(
            fontWeight: FontWeight.bold, fontSize: 17, color: Colors.white)),
    accountEmail: Text('version 1.0',
        style: TextStyle(fontSize: 14, color: Colors.white)),
  );
}

Widget _drawerItem({IconData icon, String text, GestureTapCallback onTap}) {
  return ListTile(
    title: Row(
      children: <Widget>[
        Icon(icon),
        Padding(
          padding: EdgeInsets.only(left: 25.0),
          child: Text(
            text,
            style: TextStyle(
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ],
    ),
    onTap: onTap,
  );
}
