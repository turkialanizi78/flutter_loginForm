// ignore_for_file: prefer_const_constructors, sort_child_properties_last

import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Welcome extends StatelessWidget {
  const Welcome({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          color: Color.fromARGB(153, 224, 201, 230),
          height: double.infinity,
          width: double.infinity,
          child: Stack(children: [
            Positioned(
              top: 0,
              child: Image.asset(
                'assets/images/main_top.png',
                width: 140,
              ),
            ),
            Positioned(
              bottom: 0,
              child: Image.asset(
                'assets/images/main_bottom.png',
                width: 111,
                color: Color.fromARGB(255, 250, 204, 220),
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(90, 30, 90, 0),
              child: Text(
                'Welcome',
                style: TextStyle(
                  fontSize: 40,
                  color: Color.fromARGB(255, 61, 2, 2),
                  fontFamily: 'myfont',
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 120),
              child: SizedBox(
                width: double.infinity,
                height: double.infinity,
                child: Column(
                  children: [
                    SvgPicture.asset('assets/icons/chat.svg'),
                    ElevatedButton(
                      onPressed: () {
                        Navigator.pushNamed(context, '/login');
                      },
                      child: Text(
                        "Log in",
                        style: TextStyle(fontSize: 22),
                      ),
                      style: ButtonStyle(
                          backgroundColor: MaterialStateProperty.all(
                              Color.fromARGB(255, 162, 13, 95)),
                          padding: MaterialStateProperty.all(
                              EdgeInsets.symmetric(
                                  horizontal: 100, vertical: 10)),
                          shape:
                              MaterialStateProperty.all(RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(66),
                          ))),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    ElevatedButton(
                      onPressed: () {
                        Navigator.pushNamed(context, '/signup');
                      },
                      child: Text(
                        "Sign Up",
                        style: TextStyle(fontSize: 22, color: Colors.black),
                      ),
                      style: ButtonStyle(
                          backgroundColor: MaterialStateProperty.all(
                              Color.fromARGB(255, 160, 44, 108)),
                          padding: MaterialStateProperty.all(
                              EdgeInsets.symmetric(
                                  horizontal: 100, vertical: 10)),
                          shape:
                              MaterialStateProperty.all(RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(66),
                          ))),
                    ),
                  ],
                ),
              ),
            )
          ]),
        ),
      ),
    );
  }
}
