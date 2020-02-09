import 'package:flutter/material.dart';

class CustomButtonDark extends StatelessWidget {
  final String text;
  final GestureTapCallback onPressed;

  const CustomButtonDark({
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
      ),
      child: Container(
        padding: EdgeInsets.all(20),
        width: MediaQuery.of(context).size.width,
        child: Text(
          this.text,
          style: TextStyle(
            color: Colors.white,
            fontFamily: "Roboto",
            fontWeight: FontWeight.w700,
            fontSize: 15,
          ),
          textAlign: TextAlign.center,
        ),
      ),
      color: Color(0xFF293143),
      onPressed: this.onPressed,
    );
  }
}
