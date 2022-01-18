import 'dart:ffi';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../providers/auth.dart';
import '../screens/Signup.dart';

class LogiPage extends StatelessWidget {
  Map<String, String> _authdata = {
    'email': '',
    'password': "",
  };

  void GotoSignup(context) {
    Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (ctx) {
      return SignP();
    }));
  }

  final _mycontrolleremail = TextEditingController();
  final _mycontrollerpass = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Container(
          child: Column(
            children: [
              Container(
                height: 400,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage('assets/bag.png'),
                    fit: BoxFit.contain,
                  ),
                ),
                child: Stack(
                  children: [
                    Positioned(
                      left: 30,
                      width: 80,
                      height: 200,
                      child: Container(
                        decoration: BoxDecoration(
                            image: DecorationImage(
                                image: AssetImage('assets/baloon.png'))),
                      ),
                    ),
                    Positioned(
                      bottom: 5,
                      right: 165,
                      child: Container(
                        child: Center(
                          child: Text(
                            'Login',
                            style: TextStyle(
                                fontSize: 32,
                                fontWeight: FontWeight.bold,
                                color: Colors.blue),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.all(20),
                child: Column(
                  children: [
                    Container(
                      padding: EdgeInsets.all(7),
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(10),
                          boxShadow: [
                            BoxShadow(
                              color: Color.fromRGBO(143, 148, 200, 1),
                              blurRadius: 20,
                              offset: Offset(0, 3),
                            )
                          ]),
                      child: SingleChildScrollView(
                        child: Container(
                          padding: EdgeInsets.all(2.0),
                          decoration: BoxDecoration(
                              border: Border(
                                  bottom: BorderSide(
                            color: Colors.blueGrey,
                          ))),
                          child: TextField(
                            controller: _mycontrolleremail,
                            decoration: InputDecoration(
                                border: InputBorder.none,
                                hintText: "Email id",
                                hintStyle: TextStyle(color: Colors.grey[400])),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Container(
                      padding: EdgeInsets.all(10),
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(10),
                          boxShadow: [
                            BoxShadow(
                              color: Color.fromRGBO(143, 148, 251, 1),
                              blurRadius: 20,
                              offset: Offset(0, 10),
                            )
                          ]),
                      child: SingleChildScrollView(
                        child: Container(
                          padding: EdgeInsets.all(2.0),
                          decoration: BoxDecoration(
                              border: Border(
                                  bottom: BorderSide(
                            color: Colors.blueGrey,
                          ))),
                          child: TextField(
                            obscureText: true,
                            decoration: InputDecoration(
                                border: InputBorder.none,
                                hintText: "password",
                                hintStyle: TextStyle(color: Colors.grey[400])),
                            controller: _mycontrollerpass,
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    InkWell(
                      onTap: () async => {
                        _authdata['email'] = _mycontrolleremail.text,
                        _authdata['password'] = _mycontrollerpass.text,
                        await Provider.of<Auth>(context, listen: false).Sigin(
                            _mycontrolleremail.text, _mycontrollerpass.text)
                      },
                      child: Container(
                        height: 50,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          gradient: LinearGradient(
                            colors: [
                              Color.fromRGBO(143, 148, 251, 2),
                              Color.fromRGBO(143, 148, 251, .6),
                            ],
                          ),
                        ),
                        child: Center(
                          child: Text(
                            'Submit ',
                            style: TextStyle(
                                fontFamily: 'ReadexPro-Light',
                                fontSize: 20,
                                color: Colors.white),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        GestureDetector(
                          onTap: () => {print('tapp tapp tappin')},
                          child: Text(
                            "forgot Password ?",
                            style: TextStyle(
                                color: Colors.redAccent,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                        GestureDetector(
                          onTap: () => GotoSignup,
                          child: Text(
                            "New User ? signup",
                            style: TextStyle(
                                color: Colors.blueAccent,
                                fontWeight: FontWeight.bold),
                          ),
                        )
                      ],
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
