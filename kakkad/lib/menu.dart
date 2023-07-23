import 'package:flutter/material.dart';
import 'package:kakkad/aboutpage.dart';
import 'package:kakkad/components/appbar.dart';
import 'package:kakkad/components/rowcontents.dart';
import 'package:kakkad/feedback.dart';

class Menu extends StatelessWidget {
  const Menu({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: const PreferredSize(
          preferredSize: Size.fromHeight(kToolbarHeight),
          child: Myappbar(title: 'MENU'),
        ),
        body: SingleChildScrollView(
          child: SafeArea(
            child: Container(
              margin: const EdgeInsets.only(left: 20, right: 20, top: 20),
              child: Column(
                children: [
                  RowContent(
                    icon: Icons.info_outline,
                    label: 'About Kakad',
                    onpressed: () {
                      Navigator.of(context).push(
                        MaterialPageRoute(builder: (BuildContext context) {
                          return const Aboutkakad();
                        }),
                      );
                    },
                  ),
                  const SizedBox(height: 10),
                  RowContent(
                    icon: Icons.feedback_outlined,
                    label: 'Feedback',
                    onpressed: () {
                      Navigator.of(context).push(
                        MaterialPageRoute(builder: (BuildContext context) {
                          return const Feedbackfield();
                        }),
                      );
                    },
                  ),
                  const SizedBox(height: 10),
                  RowContent(
                    icon: Icons.list_alt,
                    label: 'Terms and Conditions',
                    onpressed: () {},
                  ),
                  const SizedBox(height: 10),
                  RowContent(
                    icon: Icons.list_alt,
                    label: 'Privacy Policy',
                    onpressed: () {},
                  ),
                  const SizedBox(height: 10),
                  RowContent(
                    icon: Icons.device_unknown,
                    label: 'FAQs',
                    onpressed: () {},
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
