import 'package:flutter/material.dart';
import 'package:flutter_loginform/pages/login.dart';
import 'package:flutter_loginform/pages/signup.dart';
import 'package:flutter_loginform/pages/welcome.dart';

void main() => runApp(MaterialApp(
      initialRoute: '/',
      debugShowCheckedModeBanner: false,
      routes: {
        '/': (context) => const Welcome(),
        '/login': (context) => const LoginForm(),
        '/signup': (context) => const Signup(),
      },
    ));
