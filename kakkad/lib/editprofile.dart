import 'package:flutter/material.dart';
import 'package:kakkad/components/button.dart';
import 'package:kakkad/components/inputtext.dart';

class Editprofile extends StatelessWidget {
  const Editprofile({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: SingleChildScrollView(
          child: SafeArea(
            child: Container(
              margin: const EdgeInsets.only(left: 30, right: 30, top: 50),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  const SizedBox(height: 20),
                  const Titletext(title: '   Name*'),
                  const Textfield(
                    hinttext: 'Hari Bahadur',
                    icon: Icons.person,
                    obscuretext: false,
                    fontsize: 14,
                  ),
                  const SizedBox(height: 20),
                  const Titletext(title: '   Email*'),
                  const Textfield(
                      hinttext: 'hari@example.com',
                      icon: Icons.mail,
                      obscuretext: false,
                      fontsize: 14),
                  const SizedBox(height: 20),
                  const Titletext(title: '   Phone*'),
                  const Textfield(
                    hinttext: '+977-9812345678',
                    icon: Icons.phone,
                    obscuretext: false,
                    fontsize: 14,
                  ),
                  const SizedBox(height: 20),
                  const Titletext(title: '   Address*'),
                  const Textfield(
                    hinttext: 'SrijanaChowk-8, pokhara',
                    icon: Icons.location_on,
                    obscuretext: false,
                    fontsize: 14,
                  ),
                  const SizedBox(height: 200),
                  Custombutton(onpressed: () {}, label: 'UPDATE PROFILE'),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class Titletext extends StatelessWidget {
  final String title;
  const Titletext({required this.title, super.key});

  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      style: const TextStyle(
        fontSize: 16,
        fontWeight: FontWeight.w500,
      ),
    );
  }
}
