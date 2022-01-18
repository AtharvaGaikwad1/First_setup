import 'dart:html';
import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:flutter/widgets.dart';

class Auth with ChangeNotifier {
  late String _token;
  late DateTime _expiryDate;
  late String _userID;

  Future<void> signUp(String email, String password) async {
    final url = Uri.parse(
        "https://identitytoolkit.googleapis.com/v1/accounts:signUp?key=AIzaSyCPJQ4Cxg0EcA_v_42sdiGb2FMHabNGrtc");

    final response = await http.post(
      url,
      body: json.encode(
        {
          'email': email,
          'password': password,
          'returnSecureToken': true,
        },
      ),
    );

    // ignore: avoid_print
    print(json.decode(response.body));
  }

  Future<void> Sigin(String email, String password) async {
    final url_login = Uri.parse(
        "https://identitytoolkit.googleapis.com/v1/accounts:signInWithPassword?key=AIzaSyCPJQ4Cxg0EcA_v_42sdiGb2FMHabNGrtc");

    final response_login = await http.post(
      url_login,
      body: json.encode(
        {
          'email': email,
          'password': password,
          'returnSecureToken': true,
        },
      ),
    );
    // ignore: avoid_print
    print(json.decode(response_login.body));
  }

  // https://identitytoolkit.googleapis.com/v1/accounts:signInWithCustomToken?key=[API_KEY]
  // AIzaSyCPJQ4Cxg0EcA_v_42sdiGb2FMHabNGrtc

}
