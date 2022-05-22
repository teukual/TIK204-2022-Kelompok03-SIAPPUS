import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:provider/provider.dart';
import 'package:sistem_informasi_manajemen_puskesmas/halamanAwal.dart';
import 'package:sistem_informasi_manajemen_puskesmas/halamanUtama.dart';

class Wrapper extends StatelessWidget {
  const Wrapper({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    User? user = Provider.of<User?>(context);
    if (user == null) {
      return HalamanAwal();
    } else {
      return HalamanUtama();
    }
    ;
  }
}
