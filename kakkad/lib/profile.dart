import 'package:flutter/material.dart';
import 'package:kakkad/components/appbar.dart';
import 'package:kakkad/components/button.dart';
import 'package:kakkad/editprofile.dart';
import 'package:kakkad/login.dart';

class Profile extends StatelessWidget {
  const Profile({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: const PreferredSize(
          preferredSize: Size.fromHeight(kToolbarHeight),
          child: Myappbar(title: 'PROFILE'),
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
                      color: Colors.grey.shade400,
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
                      Icon(Icons.mail),
                      SizedBox(width: 10),
                      Text('abc@example.com')
                    ],
                  ),
                  const SizedBox(height: 10),
                  const Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(Icons.phone),
                      SizedBox(width: 10),
                      Text('977-98XXXXXXXX'),
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
                  const SizedBox(height: 65),
                  const RowContent(
                    icon: Icons.heart_broken,
                    label: 'My Favorites',
                  ),
                  const SizedBox(height: 15),
                  const RowContent(
                    icon: Icons.book_online,
                    label: 'Order History',
                  ),
                  const SizedBox(height: 15),
                  const RowContent(
                    icon: Icons.location_on_outlined,
                    label: 'Manage Delivery Address',
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
  final Color? color;

  const RowContent({
    this.color = Colors.black,
    required this.icon,
    required this.label,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          margin: const EdgeInsets.symmetric(horizontal: 20),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Icon(
                icon,
                color: color,
              ),
              const SizedBox(width: 15),
              Text(
                label,
                style: const TextStyle(
                  fontSize: 14,
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
