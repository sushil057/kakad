import 'package:flutter/material.dart';
import 'package:kakkad/components/appbar.dart';
import 'package:kakkad/components/button.dart';
import 'package:kakkad/components/colors.dart';
import 'package:kakkad/components/inputtext.dart';
import 'package:kakkad/components/title.dart';
import 'package:kakkad/signup.dart';

class Loginpage extends StatelessWidget {
  const Loginpage({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        // appBar: const Myappbar(),
        body: SingleChildScrollView(
          child: SafeArea(
            child: Container(
              margin: const EdgeInsets.only(left: 30, right: 30, top: 80),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  const Titletext(title: 'LOGIN'),
                  SizedBox(
                    height: 100,
                    width: double.infinity,
                    child: Image.asset('images/kakkadlogo.png'),
                  ),
                  const SizedBox(height: 15),
                  const Textfield(
                    hinttext: 'Email*',
                    icon: Icons.mail,
                    obscuretext: false,
                  ),
                  const SizedBox(height: 15),
                  const Textfield(
                    hinttext: 'Password*',
                    icon: Icons.lock,
                    obscuretext: true,
                  ),
                  const SizedBox(height: 40),
                  Custombutton(onpressed: () {}, label: 'LOG IN'),
                  const SizedBox(height: 15),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      TextButton(
                        onPressed: () {},
                        child: Text(
                          'Forget Password',
                          style: TextStyle(
                            color: Mycolors.primarygreytext,
                          ),
                        ),
                      ),
                      TextButton(
                        onPressed: () {
                          Navigator.of(context).push(
                            MaterialPageRoute(
                              builder: (BuildContext context) => const Signup(),
                            ),
                          );
                        },
                        child: const Text('Create Account'),
                      ),
                    ],
                  ),
                  const SizedBox(height: 20),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Expanded(
                        child: Divider(
                          thickness: 2,
                          color: Mycolors.primarygreytext,
                        ),
                      ),
                      const Padding(
                        padding: EdgeInsets.symmetric(horizontal: 16),
                        child: Text(
                          'OR',
                          style: TextStyle(
                            fontSize: 18,
                          ),
                        ),
                      ),
                      Expanded(
                        child: Divider(
                          thickness: 2,
                          color: Mycolors.primarygreytext,
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 30),
                  Container(
                    decoration: BoxDecoration(
                      border: Border.all(width: 1),
                      shape: BoxShape.rectangle,
                      borderRadius: BorderRadius.circular(30),
                    ),
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.transparent,
                        shadowColor: Colors.transparent,
                      ),
                      onPressed: () {},
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Image.asset(
                            'images/google.png',
                            width: 30,
                            height: 30,
                          ),
                          const SizedBox(
                            width: 30,
                          ),
                          Text(
                            'Login with Google',
                            style: TextStyle(
                              color: Mycolors.primarygreytext,
                              fontSize: 18,
                            ),
                          ),
                        ],
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