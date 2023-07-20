import 'package:flutter/material.dart';
import 'package:kakkad/changepwd.dart';
import 'package:kakkad/components/appbar.dart';
import 'package:kakkad/components/button.dart';
import 'package:kakkad/components/colors.dart';
import 'package:kakkad/editprofile.dart';
import 'package:kakkad/login.dart';
import 'package:kakkad/shippingaddress.dart';

class Profile extends StatelessWidget {
  const Profile({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: const PreferredSize(
          preferredSize: Size.fromHeight(kToolbarHeight),
          child: Myappbar(title: 'MY PROFILE'),
        ),
        body: SingleChildScrollView(
          child: SafeArea(
            child: Container(
              margin: const EdgeInsets.only(left: 20, right: 20),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      IconButton(
                        alignment: Alignment.topRight,
                        onPressed: () {
                          Navigator.of(context).push(
                            MaterialPageRoute(builder: (BuildContext context) {
                              return const Loginpage();
                            }),
                          );
                        },
                        icon: const Icon(
                          Icons.logout_outlined,
                          color: Colors.black,
                          size: 30,
                        ),
                      ),
                    ],
                  ),
                  Container(
                    width: 120,
                    height: 120,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: Colors.grey.shade300,
                    ),
                    child: const Icon(
                      Icons.person_outline,
                      size: 110,
                    ),
                  ),
                  const SizedBox(height: 10),
                  const Text(
                    'Hari Bahadur',
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(height: 10),
                  const Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(Icons.mail_outline),
                      SizedBox(width: 5),
                      Text('abc@example.com')
                    ],
                  ),
                  const SizedBox(height: 10),
                  const Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(Icons.local_phone_outlined),
                      SizedBox(width: 5),
                      Text('977-9812345678'),
                    ],
                  ),
                  const SizedBox(height: 10),
                  SizedBox(
                    height: 35,
                    width: 170,
                    child: Custombutton(
                        label: 'EDIT PROFILE',
                        onpressed: () {
                          Navigator.of(context).push(
                            MaterialPageRoute(
                              builder: (BuildContext context) {
                                return const Editprofile();
                              },
                            ),
                          );
                        }),
                  ),
                  const SizedBox(height: 5),
                  Divider(
                    color: Mycolors.primarytext,
                  ),
                  const SizedBox(height: 35),
                  RowContent(
                    icon: Icons.favorite_border,
                    label: 'My Favorites',
                    icon2: Icons.arrow_forward_ios,
                    onpressed: () {},
                  ),
                  const SizedBox(height: 5),
                  RowContent(
                    icon: Icons.alarm_rounded,
                    label: 'Purchas History',
                    icon2: Icons.arrow_forward_ios,
                    onpressed: () {},
                  ),
                  const SizedBox(height: 5),
                  RowContent(
                    icon: Icons.location_on_outlined,
                    label: 'Manage Shipping Address',
                    icon2: Icons.arrow_forward_ios,
                    onpressed: () {
                      Navigator.of(context).push(
                        MaterialPageRoute(
                          builder: (BuildContext context) {
                            return const Shippingaddress();
                          },
                        ),
                      );
                    },
                  ),
                  const SizedBox(height: 5),
                  RowContent(
                    icon: Icons.key,
                    label: 'Change Password',
                    icon2: Icons.arrow_forward_ios,
                    onpressed: () {
                      Navigator.of(context).push(
                        MaterialPageRoute(
                          builder: (BuildContext context) {
                            return const CHangepswd();
                          },
                        ),
                      );
                    },
                  ),
                  const SizedBox(height: 5),
                  RowContent(
                    icon: Icons.newspaper,
                    label: 'Newsletter Subscription',
                    icon2: Icons.circle,
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

class RowContent extends StatelessWidget {
  final IconData icon;
  final String label;
  final IconData? icon2;
  final VoidCallback onpressed;

  const RowContent({
    required this.icon,
    required this.label,
    required this.onpressed,
    this.icon2,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        TextButton(
          onPressed: onpressed,
          child: Row(
              // mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Icon(
                  icon,
                  color: Mycolors.primaryred,
                ),
                const SizedBox(width: 15),
                Text(
                  label,
                  style: TextStyle(
                    fontSize: 14,
                    color: Mycolors.primaryblack,
                  ),
                ),
                Icon(
                  icon2,
                  color: Mycolors.primarytext,
                  size: 16,
                ),
              ]),
        ),
      ],
    );
  }
}
