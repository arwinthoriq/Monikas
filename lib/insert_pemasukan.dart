import 'package:flutter/material.dart';
import 'data_pemasukan.dart';
//import 'data.dart';

class Insertmasuk extends StatefulWidget {
  final index;
  final value;
  Insertmasuk({Key key, @required this.index, @required this.value})
      : super(key: key);

  @override
  _InsertmasukState createState() =>
      _InsertmasukState(index: index, value: value);
}

class _InsertmasukState extends State<Insertmasuk> {
  _InsertmasukState({@required this.index, @required this.value}) : super();
  // variabel untuk menampung data yang dikirim dari halaman home
  final index;
  final value;

  // controller TextField untuk validasi
  final namaController = TextEditingController();
  final hargaController = TextEditingController();
  final keteranganController = TextEditingController();

  // cek semua data sudah diisi atau belum
  isDataValid() {
    if (namaController.text.isEmpty) {
      return false;
    }

    if (hargaController.text.isEmpty) {
      return false;
    }

    if (keteranganController.text.isEmpty) {
      return false;
    }

    return true;
  }

  getData() {
    // jika nilai index dan value yang dikirim dari halaman home tidak null
    // artinya ini adalah operasi update
    // tampilkan data yang dikirim, sehingga user bisa edit
    if (index != null && value != null) {
      setState(() {
        namaController.text = value['nama'];
        hargaController.text = value['harga'];
        keteranganController.text = value['keterangan'];
      });
    }
  }

  // proses menyimpan data yang diinput user ke Shared Preferences
  saveData() async {
    // cek semua data sudah diisi atau belum
    // jika belum tampilkan pesan error
    if (isDataValid()) {
      // data yang akan dimasukkan atau diupdate ke Shared Preferences sesuai input user
      var customer = {
        'nama': namaController.text,
        'harga': hargaController.text,
        'keterangan': keteranganController.text
      };

      // ambil data Shared Preferences sebagai list
      var savedData = await Data.getData();

      if (index == null) {
        // index == null artinya proses insert
        // masukkan data pada index 0 pada data Shared Preferences
        // sehingga pada halaman Home data yang baru dimasukkan
        // akan tampil paling atas
        savedData.insert(0, customer);
      } else {
        // jika index tidak null artinya proses update
        // update data Shared Preferences sesuai index-nya
        savedData[index] = customer;
      }
      // simpan data yang diinsert / diedit user ke Shared Preferences kembali
      // kemudian tutup halaman insert ini
      await Data.saveData(savedData);
      Navigator.pop(context);
    } else {
      showDialog(
          context: context,
          builder: (context) {
            return AlertDialog(
              title: Text('Empty Field'),
              content: Text('Please fill all field.'),
              actions: <Widget>[
                FlatButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  child: Text('OK'),
                )
              ],
            );
          });
    }
  }

  deleteData() async {
    // ambil data Shared Preferences sebagai list
    // delete data pada index yang sesuai
    // kemudian simpan kembali ke Shared Preferences
    // dan kembali ke halaman Home
    var savedData = await Data.getData();
    savedData.removeAt(index);

    await Data.saveData(savedData);

    Navigator.pop(context);
  }

  getDeleteButton() {
    // jika proses update tampilkan tombol delete
    // jika insert return widget kosong
    if (index != null && value != null) {
      return FlatButton(
        child: Text(
          'DELETE',
          style: TextStyle(fontWeight: FontWeight.bold, color: Colors.white),
        ),
        onPressed: () {
          deleteData();
        },
      );
    } else {
      return SizedBox.shrink();
    }
  }

  @override
  initState() {
    super.initState();
    getData();
  }

  @override
  Widget build(BuildContext context) {
    // final _screenSize = MediaQuery.of(context).size;
    return Scaffold(
        appBar: AppBar(
          //title: Text('Insert'),
          backgroundColor: Colors.lightBlue,
          actions: <Widget>[
            getDeleteButton(),
            FlatButton(
              onPressed: () {
                saveData();
              },
              child: Text(
                'SAVE',
                style:
                    TextStyle(fontWeight: FontWeight.bold, color: Colors.white),
              ),
            ),
          ],
        ),
        body: new SingleChildScrollView(
            child: new Container(
          margin: EdgeInsets.fromLTRB(15.0, 20.0, 15.0, 10.0),
          color: Colors.white,
          child: new Column(children: <Widget>[
            Text(
              'Masukkan Pemasukan',
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 18,
                  color: Colors.black),
            ),
            new TextField(
              controller: namaController,
              decoration: InputDecoration(labelText: "Nama"),
            ),
            new TextField(
              controller: hargaController,
              decoration: InputDecoration(labelText: "Harga"),
            ),
            new TextField(
              controller: keteranganController,
              decoration: InputDecoration(labelText: "Keterangan"),
            ),
            //
          ]),
        )));
  }
}
