import 'package:flutter/material.dart';

class ProfilePhoto extends StatefulWidget {
  @override
  _ProfilePhotoState createState() => _ProfilePhotoState();
}

class _ProfilePhotoState extends State<ProfilePhoto> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(5),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10.0),
        border: Border.all(width: 1, color: Color(0xFF293143)),
        color: Colors.white,
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          GestureDetector(
            onTap: () {
              setState(() {
                
              });
            },
            child: ClipOval(
              child: Container(
                color: Color(0xFFF2F2F2),
                height: 50.0, // height of the button
                width: 50.0, // width of the button
                child: Center(
                  child: Icon(
                    Icons.add,
                    size: 50,
                    color: Color(0xFFE13131),
                  ),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
