import 'package:flutter/material.dart';
import 'package:Monikas/login_page.dart';

class ForgotPage extends StatefulWidget {
  static String tag = 'forgot-page';
  @override
  _ForgotPageState createState() => new _ForgotPageState();
}

class _ForgotPageState extends State<ForgotPage> {
  @override
  Widget build(BuildContext context) {
    final logo = Hero(
      tag: 'hero',
      child: CircleAvatar(
        backgroundColor: Colors.transparent,
        radius: 48.0,
        child: Image.asset('assets/logo.png'),
      ),
    );

    final lorem1 = Center(
      child: Text(
        'Forgot Password',
        style: TextStyle(
            fontSize: 30.0, fontWeight: FontWeight.bold, color: Colors.black),
      ),
    );

    final lorem2 = Center(
      child: Text(
        'Please enter your email address. You will receive a link to create a new password via email',
        style: TextStyle(
            fontSize: 16.0, fontWeight: FontWeight.bold, color: Colors.black54),
      ),
    );

    final email = TextFormField(
      keyboardType: TextInputType.emailAddress,
      autofocus: false,
      initialValue: 'arwin@gmail.com',
      decoration: InputDecoration(
        hintText: 'Email',
        contentPadding: EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 10.0),
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(32.0)),
      ),
    );

    final forgotButton = Padding(
      padding: EdgeInsets.symmetric(vertical: 16.0),
      child: RaisedButton(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(24),
        ),
        onPressed: () {
          Navigator.of(context).pushNamed(LoginPage.tag);
        },
        padding: EdgeInsets.all(12),
        color: Colors.lightBlueAccent,
        child: Text('Send', style: TextStyle(color: Colors.white)),
      ),
    );

    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: ListView(
          shrinkWrap: true,
          padding: EdgeInsets.only(left: 24.0, right: 24.0),
          children: <Widget>[
            logo,
            SizedBox(height: 30.0),
            lorem1,
            SizedBox(height: 8.0),
            lorem2,
            SizedBox(height: 20.0),
            email,
            SizedBox(height: 8.0),
            forgotButton,
          ],
        ),
      ),
    );
  }
}
