import 'package:flutter/material.dart';
import 'package:kakkad/components/appbar.dart';
import 'package:kakkad/components/button.dart';
import 'package:kakkad/components/codebox.dart';
import 'package:kakkad/confirmpassword.dart';

class Pwdverification extends StatelessWidget {
  const Pwdverification({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: PreferredSize(
          preferredSize: const Size.fromHeight(kToolbarHeight),
          child: Myappbar(
            title: 'FORGET PASSWORD',
            onpressed: () {
              Navigator.of(context).pop(context);
            },
          ),
        ),
        body: Center(
          child: Container(
            margin:
                const EdgeInsets.only(left: 20, right: 20, top: 20, bottom: 50),
            child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  const SizedBox(height: 100),
                  const Text(
                    'Enter the verification code sent to you at: g***********1@example.com',
                    style: TextStyle(fontSize: 18),
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
                  Expanded(
                    child: ElevatedButton(
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
                          ],
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    child: Align(
                      alignment: Alignment.bottomCenter,
                      child: Custombutton(
                          onpressed: () {
                            Navigator.of(context).push(
                              MaterialPageRoute(
                                  builder: (BuildContext context) {
                                return const Confirmpassword();
                              }),
                            );
                          },
                          label: 'CONTINUE'),
                    ),
                  ),
                ]),
          ),
        ),
      ),
    );
  }
}
