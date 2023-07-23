import 'dart:core';
import 'package:flutter/material.dart';
import 'package:loginpage_flutter/registerpage.dart';
import 'package:fluttertoast/fluttertoast.dart' show FToast, Fluttertoast, Toast, ToastGravity;

import 'homescreen.dart';

class MyLoginPage extends StatefulWidget {
  const MyLoginPage({super.key});


  @override
  State<MyLoginPage> createState() => _MyLoginPageState();
}

class _MyLoginPageState extends State<MyLoginPage> {

  FToast? fToast;
  var _passwordVisible = false;

  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();


  bool validateEmail(String email) {
    if(email.isEmpty) {
      return false;
    } else if(email.contains('@') == false) {
      return false;
    } else{
      return true;
    }
  }
  bool validatePassword(String password) {
    if(password.isEmpty || RegExp(r'^(?=.*?[A-Z])(?=.*?[a-z])(?=.*?[0-9])(?=.*?[!@#$&*~]).{8,}$').hasMatch(password) == false) {
      return false;
    } else if(password.length < 8) {
      return false;
    } else{
      return true;
    }
  }

  void showToast(String val) {
    Fluttertoast.showToast(
        msg: val,
        toastLength: Toast.LENGTH_SHORT,
        gravity: ToastGravity.BOTTOM,
        timeInSecForIosWeb: 1
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        body: Stack(
          children: [
            Container(
              padding: const EdgeInsets.only(left: 35, top: 90),
              child: const Text(
                'Welcome\nBack!',
                style: TextStyle(color: Colors.black, fontSize: 33,fontWeight: FontWeight.w500),
              ),
            ),
            SingleChildScrollView(
              child:
              Container(
                padding: EdgeInsets.only(
                    top: MediaQuery.of(context).size.height * 0.3),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      margin: const EdgeInsets.only(left: 35, right: 35),
                      child: Column(
                        children: [
                          Material(
                            elevation: 15.0,
                            borderRadius: BorderRadius.circular(15),
                            child: TextFormField(
                              controller: emailController,
                              style: const TextStyle(color: Colors.black),
                              decoration: InputDecoration(
                                   prefixIcon: IconButton(
                                      icon: const Icon(
                                        Icons.email,
                                        color: Colors.black,
                                      ), onPressed: () {  },),
                                  fillColor: Colors.grey.shade100,
                                  filled: true,
                                  hintText: "Email",
                                  border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(15),
                                  )),
                            ),
                          ),
                          const SizedBox(
                            height: 30,
                          ),
                          Material(
                            elevation: 15.0,
                            borderRadius: BorderRadius.circular(15),
                            //shadowColor: Colors.blue,
                            child: TextFormField(
                              style: const TextStyle(),
                              controller: passwordController,
                              decoration: InputDecoration(
                                prefixIcon: IconButton(
                                  icon: const Icon(
                                    Icons.lock,
                                    color: Colors.black,
                                  ), onPressed: () {  },),
                                  suffixIcon: IconButton(
                                    icon: Icon(
                                      // Based on passwordVisible state choose the icon
                                      _passwordVisible
                                          ? Icons.visibility
                                          : Icons.visibility_off,
                                      color: Colors.black,
                                    ),
                                    onPressed: () {
                                      // Update the state i.e. toogle the state of passwordVisible variable
                                      setState(() {
                                        _passwordVisible = !_passwordVisible;
                                      });
                                    },
                                  ),
                                  fillColor: Colors.grey.shade100,
                                  filled: true,
                                  hintText: "Password",
                                  border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(15),
                                  )),
                              obscureText: !_passwordVisible,
                            ),
                          ),
                          const SizedBox(
                            height: 120,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              const Text(
                                'Sign in',
                                style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 27, fontWeight: FontWeight.w700),
                              ),
                              CircleAvatar(
                                radius: 30,
                                backgroundColor:  const Color(0xE5111111),
                                child: IconButton(
                                    color: Colors.black,
                                    onPressed: () {
                                      if(!validateEmail(emailController.text)) {
                                        showToast('Email not valid');
                                      } else if(!validatePassword(passwordController.text)) {
                                        showToast('Password not valid');
                                      } else {
                                        showToast('Email is ${emailController.text} and Password is ${passwordController.text}');
                                      }
                                    },
                                    icon: const Icon(
                                      Icons.arrow_forward,
                                      color: Colors.white,
                                    )),
                              )
                            ],
                          ),
                          const SizedBox(
                            height: 90,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              TextButton(
                                onPressed: () {
                                  Navigator.pushReplacement(context,MaterialPageRoute(builder: (context)=>const MyRegister()));
                                },
                                style: const ButtonStyle(),
                                child: const Text(
                                  'Sign Up',
                                  textAlign: TextAlign.left,
                                  style: TextStyle(
                                      decoration: TextDecoration.underline,
                                      color: Color(0xff4c505b),
                                      fontSize: 18),
                                ),
                              ),
                              TextButton(
                                  onPressed: () {},
                                  child: const Text(
                                    'Forgot Password',
                                    style: TextStyle(
                                      decoration: TextDecoration.underline,
                                      color: Color(0xff4c505b),
                                      fontSize: 18,
                                    ),
                                  )),
                            ],
                          )
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
      );
  }
}
