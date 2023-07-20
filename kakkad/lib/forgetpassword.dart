import 'package:flutter/material.dart';
import 'package:kakkad/components/appbar.dart';
import 'package:kakkad/components/button.dart';
import 'package:kakkad/components/inputtext.dart';
import 'package:kakkad/components/title.dart';
import 'package:kakkad/pswrdverification.dart';

class Forgetpassword extends StatelessWidget {
  const Forgetpassword({super.key});

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
                  left: 30, right: 20, top: 20, bottom: 70),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  const Titletext(title: ' Email*'),
                  const Textfield(
                      hinttext: 'hari@example.com',
                      icon: Icons.mail,
                      obscuretext: false),
                  const SizedBox(height: 600),
                  Custombutton(
                      onpressed: () {
                        Navigator.of(context).push(
                          MaterialPageRoute(builder: (BuildContext context) {
                            return const Pwdverification();
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
