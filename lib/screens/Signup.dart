import 'package:flutter/material.dart';
import './login_screen.dart';

class SignP extends StatelessWidget {
  final myController = TextEditingController();
  final emailcontro = TextEditingController();
  final passcontro = TextEditingController();
  final confpasscontro = TextEditingController();

  // ignore: non_constant_identifier_names
  Map<String, String> _authdata = {
    'email': '',
    'password': "",
  };

  void GotoLogin(context) {
    Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (ctx) {
      return LogiPage();
    }));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 43, 61, 162),
      body: SingleChildScrollView(
        child: Container(
          child: Column(
            children: [
              SizedBox(
                height: 40,
              ),
              Padding(
                padding: EdgeInsets.all(20),
                child: Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.white),
                  height: 670,
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(20),
                        child: Row(
                          children: [
                            Icon(Icons.arrow_back),
                            SizedBox(
                              width: 10,
                            ),
                            Text(
                              "Sign Up",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 24,
                                  color: Color.fromARGB(255, 9, 41, 67)),
                            )
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 15, top: 5),
                        child: Align(
                          alignment: Alignment.bottomLeft,
                          child: Text(
                            "Name",
                            style: TextStyle(fontSize: 17),
                          ),
                        ),
                      ),
                      Container(
                        padding: EdgeInsets.all(10),
                        decoration: BoxDecoration(
                            color: Colors.white, boxShadow: [BoxShadow()]),
                        child: SingleChildScrollView(
                          child: Container(
                            padding: EdgeInsets.all(2.0),
                            // decoration: BoxDecoration(
                            //     border: Border(
                            //         bottom: BorderSide(
                            //   color: Colors.blueGrey,
                            // ))),
                            child: TextField(
                              controller: myController,
                              decoration: InputDecoration(
                                border: OutlineInputBorder(),
                                hintText: "Phone number",
                              ),
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 15, top: 5),
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
                        // decoration: BoxDecoration(
                        //     color: Colors.white,
                        //     borderRadius: BorderRadius.circular(10),
                        //     boxShadow: [
                        //       BoxShadow(
                        //         color: Color.fromRGBO(143, 148, 200, 1),
                        //         blurRadius: 20,
                        //         offset: Offset(0, 3),
                        //       )
                        //     ]),
                        child: SingleChildScrollView(
                          child: Container(
                            padding: EdgeInsets.all(2.0),
                            child: TextField(
                              controller: emailcontro,
                              decoration: InputDecoration(
                                border: OutlineInputBorder(),
                                hintText: "Email id",
                              ),
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 15, top: 5),
                        child: Align(
                          alignment: Alignment.bottomLeft,
                          child: Row(
                            children: [
                              Text(
                                "Password",
                                style: TextStyle(fontSize: 17),
                              ),
                              Icon(
                                Icons.info,
                                color: Colors.grey,
                              )
                            ],
                          ),
                        ),
                      ),
                      Container(
                        padding: EdgeInsets.all(10),
                        decoration:
                            BoxDecoration(color: Colors.white, boxShadow: []),
                        child: SingleChildScrollView(
                          child: Container(
                            padding: EdgeInsets.all(2.0),
                            child: TextField(
                              controller: passcontro,
                              decoration: InputDecoration(
                                  border: OutlineInputBorder(),
                                  hintText: "Password",
                                  hintStyle:
                                      TextStyle(color: Colors.grey[400])),
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 15, top: 5),
                        child: Align(
                          alignment: Alignment.bottomLeft,
                          child: Row(
                            children: [
                              Text(
                                "Confirm Password",
                                style: TextStyle(fontSize: 17),
                              ),
                              Icon(
                                Icons.info,
                                color: Colors.grey,
                              )
                            ],
                          ),
                        ),
                      ),
                      Container(
                        padding: EdgeInsets.all(10),
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(10),
                            boxShadow: []),
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
                              controller: passcontro,
                              decoration: InputDecoration(
                                border: OutlineInputBorder(),
                                hintText: " Confirm password",
                              ),
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(5),
                        child: Row(
                          children: [
                            Checkbox(value: false, onChanged: null),
                            RichText(
                              text: const TextSpan(
                                children: <TextSpan>[
                                  TextSpan(
                                    text: 'I acccept the ',
                                    style: TextStyle(
                                      color: Colors.black,
                                    ),
                                  ),
                                  TextSpan(
                                    text:
                                        ' Privacy policy,Terms of Services \n',
                                    style: TextStyle(
                                      color: Colors.pink,
                                    ),
                                  ),
                                  TextSpan(
                                    text: 'and',
                                    style: TextStyle(
                                      color: Colors.black,
                                    ),
                                  ),
                                  TextSpan(
                                    text: 'Cookies Policy ',
                                    style: TextStyle(
                                      color: Colors.pink,
                                    ),
                                  ),
                                  TextSpan(
                                    text: 'set forth by LeadersBridge ',
                                    style: TextStyle(
                                      color: Colors.black,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
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
                            padding: EdgeInsets.all(8),
                            child: Text(
                              'Sign up',
                              style: TextStyle(
                                  fontFamily: 'ReadexPro-Light',
                                  fontSize: 20,
                                  color: Colors.white),
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          GestureDetector(
                            onTap: () => null,
                            child: Text(
                              "Already a member ?",
                              style: TextStyle(
                                color: Colors.black,
                              ),
                            ),
                          ),
                          GestureDetector(
                            onTap: () => GotoLogin(context),
                            child: Text(
                              " Sign up",
                              style: TextStyle(
                                color: Colors.pink,
                              ),
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
