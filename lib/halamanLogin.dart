import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:sistem_informasi_manajemen_puskesmas/auth_services.dart';
import 'package:sistem_informasi_manajemen_puskesmas/halamanUtama.dart';

class HalamanLogin extends StatelessWidget {
  const HalamanLogin({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    TextEditingController emailController = TextEditingController(text: '');
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
                'LOGIN',
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
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
                    controller: passwordController,
                    decoration: InputDecoration(hintText: 'Password')),
              ),
              Container(
                margin: EdgeInsets.only(top: 30, bottom: 20),
                width: 170,
                height: 60,
                decoration: BoxDecoration(
                    color: Colors.black,
                    borderRadius: BorderRadius.circular(8),
                    border: Border.all(width: 3, color: Colors.black)),
                child: Builder(
                  builder: (context) => TextButton(
                    onPressed: () async {
                      await AuthServices.signIn(
                          emailController.text, passwordController.text);
                    },
                    child: Text(
                      'MASUK',
                      style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 16),
                    ),
                  ),
                ),
              ),
              TextButton(
                  onPressed: () {},
                  child: Text(
                    'LUPA PASSWORD?',
                    style: TextStyle(
                        fontSize: 18,
                        color: Colors.black,
                        fontWeight: FontWeight.bold),
                  )),
              TextButton(
                  onPressed: () {},
                  child: Text(
                    'DAFTAR',
                    style: TextStyle(
                        fontSize: 18,
                        color: Colors.black,
                        fontWeight: FontWeight.bold),
                  )),
            ],
          ),
        ),
      )),
    );
  }
}
