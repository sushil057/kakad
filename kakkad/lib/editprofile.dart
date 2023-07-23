import 'package:flutter/material.dart';
import 'package:kakkad/components/appbar.dart';
import 'package:kakkad/components/button.dart';
import 'package:kakkad/components/inputtext.dart';

class Editprofile extends StatelessWidget {
  const Editprofile({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: const PreferredSize(
          preferredSize: Size.fromHeight(kToolbarHeight),
          child: Myappbar(title: 'PROFILE'),
        ),
        body: SafeArea(
          child: Container(
            margin: const EdgeInsets.only(left: 20, right: 20, top: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Titletext(title: '   Name*'),
                    Textfield(
                      hinttext: 'Hari Bahadur',
                      icon: Icons.person,
                      obscuretext: false,
                      fontsize: 14,
                    ),
                    SizedBox(height: 20),
                    Titletext(title: '   Email*'),
                    Textfield(
                        hinttext: 'hari@example.com',
                        icon: Icons.mail,
                        obscuretext: false,
                        fontsize: 14),
                    SizedBox(height: 20),
                    Titletext(title: '   Phone*'),
                    Textfield(
                      hinttext: '+977-9812345678',
                      icon: Icons.phone,
                      obscuretext: false,
                      fontsize: 14,
                    ),
                    SizedBox(height: 20),
                    Titletext(title: '   Address*'),
                    Textfield(
                      hinttext: 'SrijanaChowk-8, pokhara',
                      icon: Icons.location_on,
                      obscuretext: false,
                      fontsize: 14,
                    ),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.only(bottom: 15.0),
                  child:
                      Custombutton(onpressed: () {}, label: 'UPDATE PROFILE'),
                ),
              ],
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
