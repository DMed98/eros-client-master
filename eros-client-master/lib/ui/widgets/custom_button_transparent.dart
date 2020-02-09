import 'package:flutter/material.dart';

class CustomButtonTransparent extends StatelessWidget {
  final String text;
  final GestureTapCallback onPressed;

  const CustomButtonTransparent({
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
            color: Color(0xFF293143),
            fontFamily: "Roboto",
            fontWeight: FontWeight.w700,
            fontSize: MediaQuery.of(context).size.width*0.044,
          ),
          textAlign: TextAlign.center,
        ),
      ),
      color: Colors.white,
      onPressed: this.onPressed,
    );
  }
}
