// ignore_for_file: prefer_const_constructors, sort_child_properties_last, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_svg/flutter_svg.dart';

class LoginForm extends StatelessWidget {
  const LoginForm({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            Navigator.pop(context); //الرجوع للصفحة الرئيسية
          },
          child: Icon(Icons.home),
          backgroundColor: Colors.pink,
        ),
        body: Container(
          color: Color.fromARGB(153, 224, 201, 230),
          // height: double.infinity,
          // width: double.infinity,
          child: Stack(children: [
            Positioned(
              top: 0,
              left: 0,
              child: Image.asset(
                'assets/images/main_top.png',
                width: 140,
              ),
            ),
            Positioned(
              bottom: 0,
              right: 0,
              child: Image.asset(
                'assets/images/login_bottom.png',
                width: 111,
                color: Color.fromARGB(255, 250, 204, 220),
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(90, 50, 90, 0),
              child: Text(
                'Login Form',
                style: TextStyle(
                  fontSize: 40,
                  color: Color.fromARGB(255, 8, 2, 2),
                  fontFamily: 'myfont',
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 120),
              child: SizedBox(
                // width: double.infinity,
                // height: double.infinity,
                child: Column(
                  children: [
                    SvgPicture.asset('assets/icons/login.svg'),
                    SizedBox(height: 5.0),
                    Column(
                      children: [
                        Container(
                          margin:
                              EdgeInsets.symmetric(vertical: 5, horizontal: 30),
                          decoration: BoxDecoration(
                              color: Color.fromARGB(255, 241, 193, 249),
                              borderRadius: BorderRadius.circular(155)),
                          child: TextField(
                            //decoration: InputDecoration(hintText: "Enter Email"),// وضع هينت للتكست فيلد
                            decoration: InputDecoration(
                                labelText:
                                    "Enter Email", // مثل الي فوق بس هذي تطلع لفوق ماتختفي
                                labelStyle: TextStyle(
                                    fontSize: 14,
                                    color: Color.fromARGB(255, 74, 6, 134)),
                                prefixIcon: Icon(Icons.person),
                                border: InputBorder.none),

                            //textInputAction: TextInputAction.done,
                            // obscureText: true,// جعل الكتابة مشفرة
                            keyboardType: TextInputType
                                .emailAddress, // تغيير وضعية الإدخال للكيبورد
                          ),
                        ),
                        Container(
                          margin:
                              EdgeInsets.symmetric(vertical: 5, horizontal: 30),
                          decoration: BoxDecoration(
                              color: Color.fromARGB(255, 219, 170, 228),
                              borderRadius: BorderRadius.circular(150)),
                          child: TextField(
                            decoration: InputDecoration(
                              labelText: "Enter password",
                              labelStyle: TextStyle(
                                  fontSize: 14,
                                  color: Color.fromARGB(255, 86, 5, 116)),
                              prefixIcon: Icon(Icons.lock),
                              suffixIcon: Icon(Icons.visibility),
                              border: InputBorder.none,
                            ),

                            obscureText: true, // جعل الكتابة مشفرة
                          ),
                        ),
                        SizedBox(height: 30.0),
                        ElevatedButton(
                          onPressed: () {},
                          child: Text(
                            "Login now",
                            style: TextStyle(fontSize: 22),
                          ),
                          style: ButtonStyle(
                              backgroundColor: MaterialStateProperty.all(
                                  Color.fromARGB(255, 162, 13, 95)),
                              padding: MaterialStateProperty.all(
                                  EdgeInsets.symmetric(
                                      horizontal: 100, vertical: 10)),
                              shape: MaterialStateProperty.all(
                                  RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(66),
                              ))),
                        ),
                        SizedBox(height: 10.0),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text('Dont have an account ? '),
                            GestureDetector(
                              onTap: () {
                                 Navigator.pushNamed(context, '/signup');
                              },
                              child: Text(' sign Up',
                              style: TextStyle(
                                fontWeight:FontWeight.bold),
                                ),
                            ),
                          ],
                        ),
                      ],
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
