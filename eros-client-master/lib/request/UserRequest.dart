import 'dart:convert';

import 'package:eros_app/config/constants.dart';
import 'package:eros_app/model/User.dart';
import 'package:eros_app/ui/widgets/snack_bar.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class UserRequest {
  Future<User> logIn(context, {Map body}) async {
    final response = await http.post(
      Constants.erosAPIURL + '/users/login/',
      headers: {"Accept": "application/json"},
      body: body,
      encoding: Encoding.getByName("utf-8"),
    );
    if (response.statusCode == 201) {
      print(response.body);
      return User.fromJson(json.decode(response.body));
    } else {
      //Show Message
      showInSnackBar(
        "Credenciales erróneas",
        Color(0xFFFFFFFF),
        Icons.description,
        context,
      );
      throw Exception(response.body);
    }
  }
}
