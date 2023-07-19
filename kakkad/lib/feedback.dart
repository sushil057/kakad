import 'package:flutter/material.dart';
import 'package:kakkad/components/appbar.dart';
import 'package:kakkad/components/inputtext.dart';
import 'package:kakkad/components/title.dart';

class Feedback extends StatelessWidget {
  const Feedback({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: const PreferredSize(
          preferredSize: Size.fromHeight(kToolbarHeight),
          child: Myappbar(title: 'FEEDBACK PAGE'),
        ),
        body: SingleChildScrollView(
          child: SafeArea(
            child: Container(
              margin: const EdgeInsets.only(left: 20, right: 20, top: 20),
              child: const Column(
                children: [
                  SizedBox(height: 15),
                  Titletext(title: 'Title'),
                  Textfield(hinttext: '', icon: null, obscuretext: false),
                  Titletext(title: 'Review'),
                  Textfield(hinttext: '', icon: null, obscuretext: false),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
