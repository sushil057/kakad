import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:kakkad/components/button.dart';
import 'package:kakkad/components/colors.dart';
import 'package:kakkad/login.dart';

class Verfication extends StatelessWidget {
  const Verfication({super.key});

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
                const SizedBox(height: 20),
                const Text(
                  'Enter the verification code sent to you at: s***********1@example.com',
                  textAlign: TextAlign.center,
                ),
                const SizedBox(height: 20),
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
                const SizedBox(height: 10),
                ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.transparent,
                    shadowColor: Colors.transparent,
                    elevation: 0,
                  ),
                  child: RichText(
                    text: const TextSpan(
                        text: "Didn't receive OTP?",
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
                        ]),
                  ),
                ),
                const SizedBox(height: 202),
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
          )),
        ),
      ),
    );
  }
}

class Codebox extends StatelessWidget {
  const Codebox({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 43,
      height: 49,
      decoration: BoxDecoration(
        color: Colors.grey,
        borderRadius: BorderRadius.circular(8),
      ),
      child: TextField(
        onChanged: (value) {
          if (value.length == 1) {
            FocusScope.of(context).nextFocus();
          }
        },
        textAlign: TextAlign.center,
        inputFormatters: [
          FilteringTextInputFormatter.digitsOnly,
          LengthLimitingTextInputFormatter(1),
        ],
        decoration: const InputDecoration(
          border: OutlineInputBorder(
              borderSide: BorderSide(
            width: 2,
          )),
        ),
      ),
    );
  }
}
