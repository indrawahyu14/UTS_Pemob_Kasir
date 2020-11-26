import 'package:flutter/material.dart';

class Profil extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Kasir Pintar'),
        backgroundColor: Colors.deepOrange[500],
      ),
      body: Container(
        padding: EdgeInsets.only(top: 100),
        color: Colors.deepOrange[300],
        child: Column(
          children: <Widget>[
            ClipRRect(
                borderRadius: BorderRadius.circular(100),
                child: Image.asset(
                  'images/naruto.jpg',
                  fit: BoxFit.cover,
                  height: 200,
                  width: 200,
                )),
            Container(
              padding: EdgeInsets.all(10),
              child: Card(
                color: Colors.white,
                child: Row(
                  children: <Widget>[
                    Icon(Icons.person),
                    Text(
                      'Nama     : Indra Wahyu',
                      style: TextStyle(
                          color: Colors.black,
                          fontFamily: "serif",
                          fontSize: 20,
                          fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
              ),
            ),
            Container(
              padding: EdgeInsets.all(10),
              child: Card(
                color: Colors.white,
                child: Row(
                  children: <Widget>[
                    Text(
                      'TTL      :  Tihingan, 14 Maret 2000',
                      style: TextStyle(
                          fontFamily: "serif",
                          fontSize: 20,
                          color: Colors.black,
                          fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
              ),
            ),
            Container(
              padding: EdgeInsets.all(10),
              child: Card(
                color: Colors.white,
                child: Row(
                  children: <Widget>[
                    Icon(Icons.person),
                    Text(
                      'Hobby :  Olahraga',
                      style: TextStyle(
                          fontFamily: "serif",
                          fontSize: 20,
                          color: Colors.black,
                          fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
