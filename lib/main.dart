import 'package:sistem_informasi_manajemen_puskesmas/halamanLogin.dart';
import 'package:sistem_informasi_manajemen_puskesmas/wrapper.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:provider/provider.dart';
import 'package:flutter/material.dart';
import 'package:sistem_informasi_manajemen_puskesmas/auth_services.dart';
import 'package:sistem_informasi_manajemen_puskesmas/wrapper.dart';
import 'package:sistem_informasi_manajemen_puskesmas/auth_services.dart';
import 'package:firebase_core/firebase_core.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return StreamProvider.value(
      initialData: null,
      value: AuthServices.userStream,
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Wrapper(),
      ),
    );
  }
}
