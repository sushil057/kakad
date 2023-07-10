import 'package:flutter/material.dart';
import 'package:kakkad/components/button.dart';
import 'package:kakkad/components/colors.dart';
import 'package:kakkad/components/inputtext.dart';
import 'package:kakkad/components/title.dart';
import 'package:kakkad/verification.dart';

class Signup extends StatelessWidget {
  const Signup({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: SingleChildScrollView(
          child: SafeArea(
            child: Container(
              margin: const EdgeInsets.only(left: 30, right: 30, top: 80),
              child: Column(
                children: [
                  const Titletext(title: 'LOGIN'),
                  SizedBox(
                    height: 100,
                    width: double.infinity,
                    child: Image.asset('images/kakkadlogo.png'),
                  ),
                  const SizedBox(height: 15),
                  const Textfield(
                    hinttext: 'Name',
                    icon: Icons.person,
                    obscuretext: false,
                  ),
                  const SizedBox(height: 15),
                  const Textfield(
                    hinttext: 'Address',
                    icon: Icons.location_on,
                    obscuretext: false,
                  ),
                  const SizedBox(height: 15),
                  const Textfield(
                    hinttext: 'Phone',
                    icon: Icons.phone,
                    obscuretext: false,
                  ),
                  const SizedBox(height: 15),
                  const Textfield(
                    hinttext: 'Email',
                    icon: Icons.mail,
                    obscuretext: false,
                  ),
                  const SizedBox(height: 15),
                  const Textfield(
                    hinttext: 'Password',
                    icon: Icons.lock,
                    obscuretext: true,
                  ),
                  const SizedBox(height: 40),
                  Custombutton(
                      onpressed: () {
                        Navigator.of(context).push(
                          MaterialPageRoute(builder: (BuildContext context) {
                            return const Verfication();
                          }),
                        );
                      },
                      label: 'CONTINUE'),
                  const SizedBox(height: 15),
                  RichText(
                    text: TextSpan(
                      text: 'Already have an account? ',
                      style: TextStyle(
                        color: Mycolors.primarygreytext,
                      ),
                      children: const <TextSpan>[
                        TextSpan(
                          text: ' LOG IN',
                          style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.w700,
                              color: Colors.blue),
                        ),
                      ],
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