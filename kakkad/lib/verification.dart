import 'package:flutter/material.dart';
import 'package:kakkad/components/appbar.dart';
import 'package:kakkad/components/button.dart';
import 'package:kakkad/components/codebox.dart';
import 'package:kakkad/components/colors.dart';
import 'package:kakkad/login.dart';

class Verification extends StatefulWidget {
  const Verification({super.key});

  @override
  State<Verification> createState() => _VerificationState();
}

class _VerificationState extends State<Verification> {
  bool? isChecked = false;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: PreferredSize(
          preferredSize: const Size.fromHeight(kToolbarHeight),
          child: Myappbar(
            title: 'SIGN UP',
            onpressed: () {
              Navigator.of(context).pop(context);
            },
          ),
        ),
        body: SingleChildScrollView(
          child: SafeArea(
            child: Container(
              margin: const EdgeInsets.only(left: 20, right: 20, top: 70),
              child: Column(
                children: [
                  SizedBox(
                    height: 100,
                    width: double.infinity,
                    child: Image.asset('images/kakkadlogo.png'),
                  ),
                  Text(
                    'SIGN UP',
                    style: TextStyle(
                      fontSize: 35,
                      fontWeight: FontWeight.bold,
                      color: Mycolors.primaryred,
                    ),
                  ),
                  const SizedBox(height: 40),
                  const Text(
                    'Enter the verification code sent to you at: s***********1@example.com',
                    textAlign: TextAlign.center,
                  ),
                  const SizedBox(height: 30),
                  const SizedBox(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Codebox(),
                        Codebox(),
                        Codebox(),
                        Codebox(),
                        Codebox(),
                        Codebox(),
                      ],
                    ),
                  ),
                  const SizedBox(height: 20),
                  ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.transparent,
                      shadowColor: Colors.transparent,
                      elevation: 0,
                    ),
                    child: RichText(
                      text: const TextSpan(
                        text: "     Didn't receive OTP?",
                        style: TextStyle(
                          color: Colors.black,
                        ),
                        children: <TextSpan>[
                          TextSpan(
                            text: "  Resend OTP",
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Colors.blue,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  const SizedBox(height: 30),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Checkbox(
                        activeColor: Mycolors.primaryred,
                        value: isChecked,
                        onChanged: (newbool) {
                          setState(() {
                            isChecked = newbool;
                          });
                        },
                      ),
                      const Column(
                        children: [
                          Text(
                            "I agree to Kakad's Terms & Conditions\n and Privacy Policy.",
                            textAlign: TextAlign.center,
                          ),
                        ],
                      ),
                    ],
                  ),
                  Custombutton(
                    label: 'SIGN UP',
                    onpressed: () {
                      Navigator.of(context).push(
                        MaterialPageRoute(
                          builder: (BuildContext context) {
                            return const Loginpage();
                          },
                        ),
                      );
                    },
                  ),
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
