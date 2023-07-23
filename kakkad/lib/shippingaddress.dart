import 'package:flutter/material.dart';
import 'package:kakkad/components/appbar.dart';
import 'package:kakkad/components/button.dart';
import 'package:kakkad/components/inputtext.dart';
import 'package:kakkad/components/title.dart';
import 'package:kakkad/profile.dart';

class Shippingaddress extends StatelessWidget {
  const Shippingaddress({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: const PreferredSize(
          preferredSize: Size.fromHeight(kToolbarHeight),
          child: Myappbar(title: 'SHIPPING ADDRESS'),
        ),
        body: SingleChildScrollView(
          child: SafeArea(
            child: Container(
              margin: const EdgeInsets.only(left: 20, right: 20, top: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Titletext(title: '  City'),
                  const Textfield(
                    hinttext: 'city',
                    icon: Icons.location_city,
                    obscuretext: false,
                  ),
                  const SizedBox(height: 20),
                  const Titletext(title: '  Phone*'),
                  const Textfield(
                    hinttext: '+977-9812345678',
                    icon: Icons.phone_outlined,
                    obscuretext: false,
                  ),
                  const SizedBox(height: 20),
                  const Titletext(title: '  Address*'),
                  const Textfield(
                    hinttext: 'Srijanachowk-8, Pokhara',
                    icon: Icons.location_on_outlined,
                    obscuretext: false,
                  ),
                  const SizedBox(height: 400),
                  Custombutton(
                    onpressed: () {
                      Navigator.of(context).push(
                        MaterialPageRoute(builder: (BuildContext context) {
                          return const Profile();
                        }),
                      );
                    },
                    label: 'UPDATE SHIPPING ADDRESS',
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
