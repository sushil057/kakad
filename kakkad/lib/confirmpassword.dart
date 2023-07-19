import 'package:flutter/material.dart';
import 'package:kakkad/components/appbar.dart';
import 'package:kakkad/components/button.dart';
import 'package:kakkad/components/inputtext.dart';
import 'package:kakkad/components/title.dart';
import 'package:kakkad/login.dart';

class Confirmpassword extends StatelessWidget {
  const Confirmpassword({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: const PreferredSize(
          preferredSize: Size.fromHeight(kToolbarHeight),
          child: Myappbar(title: 'FORGET PASSWORD'),
        ),
        body: SingleChildScrollView(
          child: SafeArea(
            child: Container(
              margin: const EdgeInsets.only(
                  left: 30, right: 30, top: 30, bottom: 30),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  const Titletext(title: ' New Password*'),
                  const Textfield(
                      hinttext: '********',
                      icon: Icons.lock,
                      obscuretext: true),
                  const SizedBox(height: 20),
                  const Titletext(title: ' Confirm Password*'),
                  const Textfield(
                      hinttext: '********',
                      icon: Icons.lock,
                      obscuretext: true),
                  const SizedBox(height: 450),
                  Custombutton(
                      onpressed: () {
                        Navigator.of(context).push(
                          MaterialPageRoute(builder: (BuildContext context) {
                            return const Loginpage();
                          }),
                        );
                      },
                      label: 'CONTINUE'),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
