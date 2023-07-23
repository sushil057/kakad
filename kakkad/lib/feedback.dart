import 'package:flutter/material.dart';
import 'package:kakkad/components/appbar.dart';
import 'package:kakkad/components/button.dart';
import 'package:kakkad/components/colors.dart';
import 'package:kakkad/components/title.dart';

class Feedbackfield extends StatelessWidget {
  const Feedbackfield({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: const PreferredSize(
          preferredSize: Size.fromHeight(kToolbarHeight),
          child: Myappbar(title: 'FEEDBACK PAGE'),
        ),
        body: Center(
          child: SafeArea(
            child: Container(
              margin: const EdgeInsets.only(left: 20, right: 20, top: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(height: 15),
                  const Titletext(title: ' Title'),
                  TextFormField(
                    cursorColor: Mycolors.primaryblack,
                    decoration: InputDecoration(
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                          color: Mycolors.primaryblack,
                        ),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      border: OutlineInputBorder(
                          borderSide: BorderSide(
                            color: Mycolors.primaryblack,
                            width: 1,
                          ),
                          borderRadius: BorderRadius.circular(10)),
                    ),
                    maxLines: 1,
                  ),
                  const SizedBox(height: 15),
                  const Titletext(title: ' Review'),
                  TextFormField(
                    cursorColor: Mycolors.primaryblack,
                    decoration: InputDecoration(
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                          color: Mycolors.primaryblack,
                        ),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      border: OutlineInputBorder(
                          borderSide: BorderSide(
                            color: Mycolors.primaryblack,
                            width: 1,
                          ),
                          borderRadius: BorderRadius.circular(10)),
                    ),
                    maxLines: 8,
                  ),
                  Expanded(
                    child: Align(
                      alignment: Alignment.bottomCenter,
                      child: Padding(
                        padding: const EdgeInsets.all(16),
                        child: Custombutton(
                          onpressed: () {},
                          label: 'SUBMIT',
                        ),
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
