import 'package:flutter/material.dart';

class CustomButtonLight extends StatelessWidget {
  final String text;
  final GestureTapCallback onPressed;

  const CustomButtonLight({
    Key key,
    this.text,
    this.onPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return RaisedButton(
      elevation: 0,
      shape: RoundedRectangleBorder(
          borderRadius: new BorderRadius.circular(40.0),
          side: BorderSide(color: Color(0xFF293143))),
      child: Container(
        padding: EdgeInsets.all(20),
        width: MediaQuery.of(context).size.width,
        child: Text(
          this.text,
          style: TextStyle(
            color: Color(0xFF293143),
            fontFamily: "Roboto",
            fontWeight: FontWeight.w700,
            fontSize: 15,
          ),
          textAlign: TextAlign.center,
        ),
      ),
      color: Colors.white,
      onPressed: this.onPressed,
    );
  }
}
