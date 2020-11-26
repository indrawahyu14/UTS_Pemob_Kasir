import 'package:flutter/material.dart';
import 'hasil.dart';
import 'profil.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  String npembeli = '';
  String nbarang = '';
  int jbarang = 0;
  int harga = 0;
  int uangpembeli = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.deepOrange[500],
        title: Text('Kasir Pintar'),
        actions: <Widget>[
          Container(
            width: 75,
            height: 75,
            child: Center(
              child: IconButton(
                icon: const Icon(Icons.person),
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => Profil()));
                },
              ),
            ),
          ),
        ],
      ),
      body: Container(
        color: Colors.deepOrange[300],
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            Container(
                child: Image.asset(
              'images/kasir pintar.png',
              fit: BoxFit.fitWidth,
            )),
            Container(
                padding: EdgeInsets.all(5),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      'Masukan Nama Pembeli:',
                      style: TextStyle(fontFamily: 'serif', fontSize: 18),
                    ),
                    Container(
                      color: Colors.white,
                      child: TextField(
                        onChanged: (txt) {
                          setState(() {
                            npembeli = txt;
                          });
                        },
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 20,
                        ),
                        decoration: InputDecoration(
                          filled: true,
                        ),
                      ),
                    ),
                  ],
                )),
            Container(
                padding: EdgeInsets.all(5),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      'Masukan Nama Barang:',
                      style: TextStyle(fontFamily: 'serif', fontSize: 18),
                    ),
                    Container(
                      color: Colors.white,
                      child: TextField(
                        onChanged: (txt) {
                          setState(() {
                            nbarang = txt;
                          });
                        },
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 20,
                        ),
                        decoration: InputDecoration(
                          filled: true,
                        ),
                      ),
                    ),
                  ],
                )),
            Container(
                padding: EdgeInsets.all(5),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      'Masukan Jumlah Barang:',
                      style: TextStyle(fontFamily: 'serif', fontSize: 18),
                    ),
                    Container(
                      color: Colors.white,
                      child: TextField(
                        onChanged: (txt) {
                          setState(() {
                            jbarang = int.parse(txt);
                          });
                        },
                        keyboardType: TextInputType.number,
                        textAlign: TextAlign.start,
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 20,
                        ),
                        decoration: InputDecoration(
                          filled: true,
                        ),
                      ),
                    ),
                  ],
                )),
            Container(
                padding: EdgeInsets.all(5),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      'Masukan Harga Barang:',
                      style: TextStyle(fontFamily: 'serif', fontSize: 18),
                    ),
                    Container(
                      color: Colors.white,
                      child: TextField(
                        onChanged: (txt) {
                          setState(() {
                            harga = int.parse(txt);
                          });
                        },
                        keyboardType: TextInputType.number,
                        textAlign: TextAlign.start,
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 20,
                        ),
                        decoration: InputDecoration(
                          filled: true,
                        ),
                      ),
                    ),
                  ],
                )),
            Container(
                padding: EdgeInsets.all(5),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      'Masukan Jumlah Uang:',
                      style: TextStyle(fontFamily: 'serif', fontSize: 18),
                    ),
                    Container(
                      color: Colors.white,
                      child: TextField(
                        onChanged: (txt) {
                          setState(() {
                            uangpembeli = int.parse(txt);
                          });
                        },
                        keyboardType: TextInputType.number,
                        textAlign: TextAlign.start,
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 20,
                        ),
                        decoration: InputDecoration(
                          filled: true,
                        ),
                      ),
                    ),
                  ],
                )),
            Container(
              height: 50,
              width: 50,
              margin: EdgeInsets.all(10),
              child: RaisedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => Proses(
                              npembeli: npembeli,
                              nbarang: nbarang,
                              jumlahbarang: jbarang,
                              hargabarang: harga,
                              jumlahuang: uangpembeli,
                            )),
                  );
                },
                padding: EdgeInsets.all(10),
                color: Colors.deepOrange[500],
                textColor: Colors.white,
                child: Text(
                  'HITUNG',
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
