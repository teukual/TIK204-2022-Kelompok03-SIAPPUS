import 'package:flutter/material.dart';
import 'package:sistem_informasi_manajemen_puskesmas/auth_services.dart';
import 'package:sistem_informasi_manajemen_puskesmas/halamanLogin.dart';

class HalamanDaftar extends StatelessWidget {
  const HalamanDaftar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    TextEditingController emailController = TextEditingController(text: '');
    TextEditingController usernameController = TextEditingController(text: '');
    TextEditingController passwordController = TextEditingController(text: '');
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Center(
            child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'DAFTAR AKUN',
                style: TextStyle(
                    fontSize: 20,
                    color: Colors.green,
                    fontWeight: FontWeight.bold),
              ),
              Container(
                margin: EdgeInsets.only(top: 30),
                padding: EdgeInsets.only(left: 15),
                decoration: BoxDecoration(
                    border: Border.all(width: 3, color: Colors.black)),
                child: TextFormField(
                    controller: emailController,
                    decoration: InputDecoration(hintText: 'Email')),
              ),
              Container(
                margin: EdgeInsets.only(top: 20),
                padding: EdgeInsets.only(left: 15),
                decoration: BoxDecoration(
                    border: Border.all(width: 3, color: Colors.black)),
                child: TextFormField(
                    controller: usernameController,
                    decoration: InputDecoration(hintText: 'Nama Pengguna')),
              ),
              Container(
                margin: EdgeInsets.only(top: 20),
                padding: EdgeInsets.only(left: 15),
                decoration: BoxDecoration(
                    border: Border.all(width: 3, color: Colors.black)),
                child: TextFormField(
                    obscureText: true,
                    controller: passwordController,
                    decoration: InputDecoration(hintText: 'Password')),
              ),
              Container(
                margin: EdgeInsets.only(top: 20),
                padding: EdgeInsets.only(left: 15),
                decoration: BoxDecoration(
                    border: Border.all(width: 3, color: Colors.black)),
                child: TextFormField(
                    obscureText: true,
                    decoration:
                        InputDecoration(hintText: 'Konfirmasi Password')),
              ),
              Container(
                margin: EdgeInsets.only(top: 30),
                width: 170,
                height: 60,
                decoration: BoxDecoration(
                    color: Colors.black,
                    borderRadius: BorderRadius.circular(8),
                    border: Border.all(width: 3, color: Colors.black)),
                child: Builder(
                  builder: (context) => TextButton(
                    onPressed: () async {
                      await AuthServices.signUp(
                          emailController.text, passwordController.text);
                    },
                    child: Text(
                      'DAFTAR',
                      style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 16),
                    ),
                  ),
                ),
              ),
            ],
          ),
        )),
      ),
    );
  }
}
