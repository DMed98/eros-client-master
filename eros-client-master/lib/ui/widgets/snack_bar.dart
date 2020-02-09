import 'package:flushbar/flushbar.dart';
import 'package:flutter/material.dart';

void showInSnackBar(String message, Color color, IconData ico, BuildContext context) {
  Flushbar(
    flushbarPosition: FlushbarPosition.BOTTOM,
    leftBarIndicatorColor:color,
    backgroundGradient: LinearGradient(colors: [Color(0xFF2F3444),  Color(0xFF2F3444)],),
    backgroundColor: Colors.red,
    icon:Icon(
      ico,
      size: 28.0,
      color: color,
    ) ,
    title: 'Eros',
    message: message,
    duration: Duration(seconds: 3),

  )
    ..show(context);
}
