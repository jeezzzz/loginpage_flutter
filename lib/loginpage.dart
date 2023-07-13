import 'package:flutter/material.dart';
import 'package:loginpage_flutter/registerpage.dart';

class MyLoginPage extends StatefulWidget {
  const MyLoginPage({super.key});

  @override
  State<MyLoginPage> createState() => _MyLoginPageState();
}

class _MyLoginPageState extends State<MyLoginPage> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
            image: AssetImage('assests/bg.png'), fit: BoxFit.cover),
      ),
      child: Scaffold(
      backgroundColor: Colors.transparent,
      body: Stack(
        children: [
          Container(),
          Container(
            padding: EdgeInsets.only(left: 35, top: 90),
            child: Text(
              'Welcome\nBack!',
              style: TextStyle(color: Colors.white, fontSize: 33,fontWeight: FontWeight.w500),
            ),
          ),
          SingleChildScrollView(
            child: Container(
              padding: EdgeInsets.only(
                  top: MediaQuery.of(context).size.height * 0.3),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    margin: EdgeInsets.only(left: 35, right: 35),
                    child: Column(
                      children: [
                        TextField(
                          style: TextStyle(color: Colors.black),
                          decoration: InputDecoration(
                              fillColor: Colors.grey.shade100,
                              filled: true,
                              hintText: "Email",
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10),
                              )),
                        ),
                        SizedBox(
                          height: 30,
                        ),
                        TextField(
                          style: TextStyle(),
                          obscureText: true,
                          decoration: InputDecoration(
                              fillColor: Colors.grey.shade100,
                              filled: true,
                              hintText: "Password",
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10),
                              )),
                        ),
                        SizedBox(
                          height: 50,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'Sign in',
                              style: TextStyle(
                                color: Colors.white,
                                  fontSize: 27, fontWeight: FontWeight.w700),
                            ),
                            CircleAvatar(
                              radius: 30,
                              backgroundColor: Colors.white,
                              child: IconButton(
                                  color: Colors.black,
                                  onPressed: () {},
                                  icon: Icon(
                                    Icons.arrow_forward,
                                  )),
                            )
                          ],
                        ),
                        SizedBox(
                          height: 160,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            TextButton(
                              onPressed: () {
                                Navigator.pushReplacement(context,MaterialPageRoute(builder: (context)=>MyRegister()));
                              },
                              child: Text(
                                'Sign Up',
                                textAlign: TextAlign.left,
                                style: TextStyle(
                                    decoration: TextDecoration.underline,
                                    color: Color(0xff4c505b),
                                    fontSize: 18),
                              ),
                              style: ButtonStyle(),
                            ),
                            TextButton(
                                onPressed: () {},
                                child: Text(
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
    ),
    );
  }
}
