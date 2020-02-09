import 'package:flutter/material.dart';

class CustomFieldText extends StatelessWidget {
  final TextEditingController controller;
  final bool obscureText;
  final String validatorText;
  final String hintText;
  final FocusNode focusNode;
  final String title;
  final bool prefix;

  const CustomFieldText({
    Key key,
    this.controller,
    this.obscureText,
    this.validatorText,
    this.hintText,
    this.focusNode,
    this.title,
    this.prefix,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      height: 70,
      padding: EdgeInsets.only(left: 15),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(30),
        color: Colors.transparent,
      ),
      child: TextFormField(
        textAlign: !prefix ? TextAlign.center : TextAlign.right,
        style: TextStyle(
            color: Color(0xFFBDbDbD),
            fontSize: 20,
            fontFamily: 'Roboto',
            fontWeight: FontWeight.w400),
        textInputAction: TextInputAction.done,
        //  focusNode: _passFocus,
        controller: this.controller,
        autocorrect: false,
        obscureText: (this.obscureText == null) ? false : this.obscureText,
        decoration: InputDecoration(
          prefixText: (this.prefix) ? title : '',
          prefixStyle: TextStyle(
            color: Color(0xFF2F3444),
            fontSize: 20,
            fontFamily: 'Roboto',
          ),
          hintText: (this.hintText == null) ? '' : this.hintText,
          enabledBorder: UnderlineInputBorder(
            borderSide: BorderSide(color: Color(0xFFBDbDbD)),
          ),
          focusedBorder: UnderlineInputBorder(
            borderSide: BorderSide(color: Color(0xFFBDbDbD), width: 1),
          ),
          border: new UnderlineInputBorder(
            borderSide: new BorderSide(
              color: Colors.white,
              style: BorderStyle.solid,
              width: 1,
            ),
          ),
          hintStyle: TextStyle(
            color: Color(0xFFBDbDbD),
            fontSize: 20,
            fontFamily: 'Roboto',
          ),
          fillColor: Color(0xFFBDbDbD),
          hoverColor: Color(0xFFBDbDbD),
          focusColor: Colors.white,
        ),
        focusNode: this.focusNode,
        validator: (value) {
          if (value.isEmpty) {
            return this.validatorText;
          }
          return null;
        },
      ),
    );
  }
}
