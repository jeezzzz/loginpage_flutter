import 'package:flutter/material.dart';
import 'package:loginpage_flutter/registerpage.dart';
import 'package:loginpage_flutter/spalsh.dart';
import 'homescreen.dart';
import 'loginpage.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: const Splash(),
    routes: {
      'register': (context) => const MyRegister(),
      'loginpage': (context) => const MyLoginPage(),
      'homescreen': (context) =>  const HomeScreen('',''),
    },
  )

  );
}
