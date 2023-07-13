import 'package:flutter/material.dart';
import 'package:loginpage_flutter/registerpage.dart';
import 'package:loginpage_flutter/spalsh.dart';
import 'loginpage.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: Splash(),
    routes: {
      'register': (context) => MyRegister(),
      'loginpage': (context) => MyLoginPage(),

    },
  )

  );
}
