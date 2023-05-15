import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

class Auth with ChangeNotifier {

  
Future<void> signup(String email, String password) async {
    Uri url = Uri.parse(
        "https://identitytoolkit.googleapis.com/v1/accounts:signUp?key=AIzaSyDBGq4k31BrsnHR58nyb9iQQfJitMEhZm4");

     try {
      var response = await http.post(
        url,
        body: json.encode({
          "email": email,
          "password": password,
          "returnSecureToken": true,
        }),
      );

      var responseData = json.decode(response.body);

      if (responseData['error'] != null) {
        throw responseData['error']["message"];
      }
    } catch (error) {
      throw error;
    }
    // print(json.decode(response.body));
  }

  Future<void> login(String email, String password) async {
    Uri url = Uri.parse(
        "https://identitytoolkit.googleapis.com/v1/accounts:signInWithPassword?key=AIzaSyDBGq4k31BrsnHR58nyb9iQQfJitMEhZm4");

    try {
      var response = await http.post(
        url,
        body: json.encode({
          "email": email,
          "password": password,
          "returnSecureToken": true,
        }),
      );

      var responseData = json.decode(response.body);

      if (responseData['error'] != null) {
        throw responseData['error']["message"];
      }
    } catch (error) {
      throw error;
    }
    // print(json.decode(response.body));
  }
}
