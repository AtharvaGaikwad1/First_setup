import 'package:flutter/material.dart';

import '../screens/Signup.dart';

class LogiPage extends StatelessWidget {
  Map<String, String> _authdata = {
    'email': '',
    'password': "",
  };

  void GotoSignup(context) {
    Navigator.of(context).push(MaterialPageRoute(builder: (ctx) {
      return SignP();
    }));
  }

  final _mycontrolleremail = TextEditingController();
  final _mycontrollerpass = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 43, 61, 162),
      body: SingleChildScrollView(
        child: Container(
          child: Column(
            children: [
              SizedBox(height: 80),
              Padding(
                padding: EdgeInsets.all(20),
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.white,
                  ),
                  height: 580,
                  width: 600,
                  child: Column(
                    children: [
                      Container(
                        height: 100,
                        width: 100,
                        decoration: BoxDecoration(
                            image: DecorationImage(
                                image: AssetImage('assets/logo.png'))),
                      ),
                      Text(
                        "Welcome Back",
                        style: TextStyle(
                          fontSize: 24,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 10),
                        child: Text(
                          "Sign in to check the latest updates on the platform",
                          style: TextStyle(color: Colors.grey),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 10, top: 40),
                        child: Align(
                          alignment: Alignment.bottomLeft,
                          child: Text(
                            "Email",
                            style: TextStyle(fontSize: 17),
                          ),
                        ),
                      ),
                      Container(
                        padding: EdgeInsets.all(7),
                        decoration: BoxDecoration(
                            // color: Colors.white,
                            // borderRadius: BorderRadius.circular(10),
                            boxShadow: [
                              // BoxShadow(
                              //   color: Color.fromRGBO(143, 148, 200, 1),
                              //   blurRadius: 20,
                              //   offset: Offset(0, 3),
                              // )
                            ]),
                        child: SingleChildScrollView(
                          child: Container(
                            padding: EdgeInsets.fromLTRB(0, 0, 0, 0),
                            // decoration: BoxDecoration(
                            //     border: Border(
                            //         bottom: BorderSide(
                            //   color: Colors.blueGrey,
                            // ))),
                            child: TextField(
                              controller: _mycontrolleremail,
                              decoration: InputDecoration(
                                  floatingLabelBehavior:
                                      FloatingLabelBehavior.always,
                                  border: OutlineInputBorder(),
                                  // labelText: "Email id",
                                  hintStyle:
                                      TextStyle(color: Colors.grey[400])),
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 10),
                        child: Align(
                          alignment: Alignment.bottomLeft,
                          child: Text(
                            "Password",
                            style: TextStyle(fontSize: 17),
                          ),
                        ),
                      ),
                      Container(
                        padding: EdgeInsets.all(10),
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(10),
                            boxShadow: [BoxShadow()]),
                        child: SingleChildScrollView(
                          child: Container(
                            padding: EdgeInsets.all(2.0),
                            // decoration: BoxDecoration(
                            //     border: Border(
                            //         bottom: BorderSide(
                            //   color: Colors.blueGrey,
                            // ))),
                            child: TextField(
                              obscureText: true,
                              decoration: InputDecoration(
                                  floatingLabelBehavior:
                                      FloatingLabelBehavior.always,
                                  border: OutlineInputBorder(),
                                  // labelText: "Password",
                                  hintStyle:
                                      TextStyle(color: Colors.grey[400])),
                              controller: _mycontrollerpass,
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(right: 10),
                        child: Align(
                          alignment: Alignment.topRight,
                          child: Text(
                            "Forgot Password ?",
                            style: TextStyle(fontSize: 17, color: Colors.grey),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      InkWell(
                        child: Container(
                          height: 50,
                          decoration: BoxDecoration(
                            shape: BoxShape.rectangle,
                            borderRadius: BorderRadius.circular(10),
                            color: Colors.pink,
                          ),
                          child: Padding(
                            padding: EdgeInsets.all(10),
                            child: Text(
                              'Sign in ',
                              style: TextStyle(
                                  fontFamily: 'ReadexPro-Light',
                                  fontSize: 20,
                                  color: Colors.white),
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 40,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          GestureDetector(
                            child: Text(
                              "Dont Have an account ? ",
                            ),
                          ),
                          GestureDetector(
                            onTap: () => GotoSignup(context),
                            child: Text(
                              "Sign up",
                              style: TextStyle(
                                  color: Colors.pink,
                                  fontWeight: FontWeight.bold),
                            ),
                          )
                        ],
                      )
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
