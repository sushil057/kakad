import 'package:flutter/material.dart';
import 'package:kakkad/components/appbar.dart';
import 'package:kakkad/components/button.dart';
import 'package:kakkad/components/inputtext.dart';
import 'package:kakkad/components/title.dart';
import 'package:kakkad/profile.dart';

class Changepswd extends StatelessWidget {
  const Changepswd({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: const PreferredSize(
          preferredSize: Size.fromHeight((kToolbarHeight)),
          child: Myappbar(title: 'CHANGE PASSWORD'),
        ),
        body: Center(
          child: SafeArea(
            child: Container(
              margin: const EdgeInsets.only(
                  left: 20, right: 20, top: 30, bottom: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Titletext(title: '  Current Password*'),
                  const Textfield(
                    hinttext: 'password',
                    icon: Icons.lock,
                    obscuretext: true,
                    fontsize: 18,
                  ),
                  const SizedBox(height: 20),
                  const Titletext(title: '  New Password*'),
                  const Textfield(
                    hinttext: 'password',
                    fontsize: 18,
                    icon: Icons.lock,
                    obscuretext: true,
                  ),
                  const SizedBox(height: 20),
                  const Titletext(title: '  Confirm Password*'),
                  const Textfield(
                    hinttext: 'password',
                    fontsize: 18,
                    icon: Icons.lock,
                    obscuretext: true,
                  ),
                  Expanded(
                    child: Align(
                      alignment: Alignment.bottomCenter,
                      child: Custombutton(
                        onpressed: () {
                          Navigator.of(context).push(
                            MaterialPageRoute(builder: (BuildContext context) {
                              return const Profile();
                            }),
                          );
                        },
                        label: 'UPDATE PASSWORD',
                      ),
                    ),
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
