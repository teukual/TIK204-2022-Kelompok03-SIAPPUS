import 'package:flutter/material.dart';
import 'package:sistem_informasi_manajemen_puskesmas/halamanAbsen.dart';
import 'package:sistem_informasi_manajemen_puskesmas/halamanAgenda.dart';
import 'package:sistem_informasi_manajemen_puskesmas/halamanPegawai.dart';
import 'package:sistem_informasi_manajemen_puskesmas/halamanProfil.dart';

class HalamanUtama extends StatelessWidget {
  const HalamanUtama({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 30),
          child: Column(children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                IconButton(
                  iconSize: 34,
                  alignment: Alignment.centerLeft,
                  onPressed: () {},
                  icon: Icon(Icons.menu),
                  padding: EdgeInsets.zero,
                ),
                TextButton(
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => HalamanProfil()));
                    },
                    child: Image.asset(
                      'images/profil.png',
                      width: 60,
                    ))
              ],
            ),
            Container(
              margin: EdgeInsets.only(top: 30, bottom: 50),
              decoration: BoxDecoration(
                  color: Colors.white,
                  boxShadow: [
                    BoxShadow(
                        color: Colors.grey, spreadRadius: 1, blurRadius: 5),
                  ],
                  borderRadius: BorderRadius.circular(10)),
              child: TextField(
                decoration: InputDecoration(
                    prefixIcon: Icon(Icons.search), hintText: 'CARI'),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Column(
                  children: [
                    Image.asset(
                      'images/absensi.png',
                      width: 70,
                    ),
                    Container(
                      margin: EdgeInsets.only(top: 20),
                      width: 100,
                      height: 40,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8),
                          border: Border.all(width: 3, color: Colors.black)),
                      child: Builder(
                        builder: (context) => TextButton(
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => HalamanAbsen()));
                          },
                          child: Text(
                            'ABSEN',
                            style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.bold,
                                fontSize: 16),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                Column(
                  children: [
                    Image.asset(
                      'images/pegawai.png',
                      width: 70,
                    ),
                    Container(
                      margin: EdgeInsets.only(top: 20),
                      width: 100,
                      height: 40,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8),
                          border: Border.all(width: 3, color: Colors.black)),
                      child: Builder(
                        builder: (context) => TextButton(
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => HalamanPegawai()));
                          },
                          child: Text(
                            'PEGAWAI',
                            style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.bold,
                                fontSize: 16),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                Column(
                  children: [
                    Image.asset(
                      'images/agenda.png',
                      width: 80,
                    ),
                    Container(
                      margin: EdgeInsets.only(top: 20),
                      width: 100,
                      height: 40,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8),
                          border: Border.all(width: 3, color: Colors.black)),
                      child: Builder(
                        builder: (context) => TextButton(
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => HalamanAgenda()));
                          },
                          child: Text(
                            'AGENDA',
                            style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.bold,
                                fontSize: 16),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            )
          ]),
        ),
      ),
    );
  }
}
