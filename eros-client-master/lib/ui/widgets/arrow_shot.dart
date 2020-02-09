import 'package:eros_app/ui/widgets/custom_button_dark.dart';
import 'package:eros_app/ui/widgets/custom_button_light.dart';
import 'package:carousel_pro/carousel_pro.dart';
import 'package:eros_app/ui/widgets/custom_button_transparent.dart';
import 'package:flutter/material.dart';

class ArrowShot extends StatefulWidget {
  final lock;

  ArrowShot({
    Key key,
    this.lock = true,
  }) : super(key: key);

  @override
  _ArrowShotState createState() => _ArrowShotState();
}

class _ArrowShotState extends State<ArrowShot> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(5),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(100.0),
        color: Colors.white,
      ),
      child: GestureDetector(
        onTap: () {
          showDialog(
            context: context,
            builder: (BuildContext context) => ErosPremiumDialog(),
          );
        },
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Stack(
              children: <Widget>[
                ClipOval(
                  child: Container(
                    decoration: BoxDecoration(
                      border: Border.all(width: 1, color: Color(0xFF293143)),
                      color: Color(0xFF293143),
                    ),
                    child: Image(
                      image: AssetImage('assets/images/swipe_01.png'),
                      width: MediaQuery.of(context).size.width*0.345,
                      height: MediaQuery.of(context).size.height*0.21,
                    ),
                  ),
                ),
                widget.lock
                    ? ClipOval(
                        child: Container(
                          color: Color(0xFF2F3444).withOpacity(0.8),
                          height: MediaQuery.of(context).size.height*0.21,
                          width: MediaQuery.of(context).size.width*0.345,
                        ),
                      )
                    : Container(),
                widget.lock
                    ? Positioned(
                        top: MediaQuery.of(context).size.height*0.06,
                        left: MediaQuery.of(context).size.width*0.11,
                        child: ClipOval(
                          child: Container(
                            height: MediaQuery.of(context).size.width*0.14, // height of the button
                            width: MediaQuery.of(context).size.width*0.14, // width of the button
                            child: Center(
                              child: Icon(
                                Icons.lock,
                                size: MediaQuery.of(context).size.width*0.14,
                                color: Color(0xFFF2F2F2),
                              ),
                            ),
                          ),
                        ),
                      )
                    : Container(),
              ],
            )
          ],
        ),
      ),
    );
  }
}

class ErosPremiumDialog extends StatefulWidget {
  @override
  _ErosPremiumDialogState createState() => _ErosPremiumDialogState();
}

class _ErosPremiumDialogState extends State<ErosPremiumDialog> {
  double optChecked = 1;
  @override
  Widget build(BuildContext context) {
    return Material(
      type: MaterialType.transparency,
      child: Stack(
        children: <Widget>[
          Container(
            padding: EdgeInsets.only(
              bottom: Consts.padding,
            ),
            margin: EdgeInsets.fromLTRB(20, 20, 20, 20),
            decoration: new BoxDecoration(
              color: Colors.white,
              shape: BoxShape.rectangle,
              // borderRadius: BorderRadius.circular(10),
              boxShadow: [
                BoxShadow(
                  color: Colors.black26,
                  blurRadius: 10.0,
                  offset: const Offset(0.0, 5.0),
                ),
              ],
            ),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                Container(
                  decoration: BoxDecoration(
                    // borderRadius: BorderRadius.circular(10.0)
                  ),
                  height: MediaQuery.of(context).size.height*0.28,
                  child: Carousel(
                    boxFit: BoxFit.fill,
                    images: [
                      ClipRRect(
                        // borderRadius: BorderRadius.only(topRight: Radius.circular(10.0), topLeft: Radius.circular(10.0)),
                        child: Stack(
                          children: <Widget>[
                            ClipRRect(
                              // borderRadius: BorderRadius.only(topRight: Radius.circular(10.0), topLeft: Radius.circular(10.0)),
                              child: Image(
                                fit: BoxFit.fill,
                                image: AssetImage('assets/images/premium_bg.jpg'),
                                width: MediaQuery.of(context).size.width,
                              ),
                            ),
                            Container(
                              height: 255,
                              decoration: new BoxDecoration(
                                // borderRadius: BorderRadius.only(topLeft: Radius.circular(10.0), topRight: Radius.circular(10.0)),
                                color: Color(0xFF2F3444).withOpacity(0.8),
                                shape: BoxShape.rectangle,
                              ),
                            ),
                            Container(
                              decoration: new BoxDecoration(
                                // borderRadius: BorderRadius.only(topLeft: Radius.circular(10.0), topRight: Radius.circular(10.0)),
                                shape: BoxShape.rectangle,
                              ),
                              padding: EdgeInsets.all(20),
                              height: 255,
                              width: MediaQuery.of(context).size.width,
                              child: Center(
                                child: Text(
                                  "ENVÍA FLECHAZOS ILIMITADOS",
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: MediaQuery.of(context).size.width/11,
                                      fontWeight: FontWeight.w700,
                                      fontFamily: "Roboto"),
                                ),
                              ),
                            ),
                            Positioned(
                              bottom: 10,
                              left: (MediaQuery.of(context).size.width / 2) - 40,
                              child: Container(
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: <Widget>[
                                    ClipOval(
                                      child: Container(
                                        height: 15.0, // height of the button
                                        width: 15.0, // width of the button
                                        child: Center(
                                          child: Icon(
                                            Icons.radio_button_checked,
                                            size: 15,
                                            color: Colors.redAccent,
                                          ),
                                        ),
                                      ),
                                    ),
                                    ClipOval(
                                      child: Container(
                                        height: 15.0, // height of the button
                                        width: 15.0, // width of the button
                                        child: Center(
                                          child: Icon(
                                            Icons.radio_button_checked,
                                            size: 15,
                                            color: Color(0xFFF2F2F2),
                                          ),
                                        ),
                                      ),
                                    ),
                                    ClipOval(
                                      child: Container(
                                        height: 15.0, // height of the button
                                        width: 15.0, // width of the button
                                        child: Center(
                                          child: Icon(
                                            Icons.radio_button_checked,
                                            size: 15,
                                            color: Color(0xFFF2F2F2),
                                          ),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                      ClipRRect(
                        // borderRadius: BorderRadius.only(topRight: Radius.circular(10.0), topLeft: Radius.circular(10.0)),
                        child: Stack(
                          children: <Widget>[
                            ClipRRect(
                              // borderRadius: BorderRadius.only(topRight: Radius.circular(10.0), topLeft: Radius.circular(10.0)),
                              child: Image(
                                fit: BoxFit.fill,
                                image: AssetImage('assets/images/premium_bg.jpg'),
                                width: MediaQuery.of(context).size.width,
                              ),
                            ),
                            Container(
                              height: 255,
                              decoration: new BoxDecoration(
                                // borderRadius: BorderRadius.only(topLeft: Radius.circular(10.0), topRight: Radius.circular(10.0)),
                                color: Color(0xFF2F3444).withOpacity(0.8),
                                shape: BoxShape.rectangle,
                              ),
                            ),
                            Container(
                              decoration: new BoxDecoration(
                                // borderRadius: BorderRadius.only(topLeft: Radius.circular(10.0), topRight: Radius.circular(10.0)),
                                shape: BoxShape.rectangle,
                              ),
                              padding: EdgeInsets.all(20),
                              height: 255,
                              width: MediaQuery.of(context).size.width,
                              child: Center(
                                child: Text(
                                  "CONOCE QUIÉN TE ENVIÓ FLECHAZOS",
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: MediaQuery.of(context).size.width/11,
                                      fontWeight: FontWeight.w700,
                                      fontFamily: "Roboto"),
                                ),
                              ),
                            ),
                            Positioned(
                              bottom: 10,
                              left: (MediaQuery.of(context).size.width / 2) - 40,
                              child: Container(
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: <Widget>[
                                    ClipOval(
                                      child: Container(
                                        height: 15.0, // height of the button
                                        width: 15.0, // width of the button
                                        child: Center(
                                          child: Icon(
                                            Icons.radio_button_checked,
                                            size: 15,
                                            color: Color(0xFFF2F2F2),
                                          ),
                                        ),
                                      ),
                                    ),
                                    ClipOval(
                                      child: Container(
                                        height: 15.0, // height of the button
                                        width: 15.0, // width of the button
                                        child: Center(
                                          child: Icon(
                                            Icons.radio_button_checked,
                                            size: 15,
                                            color: Colors.redAccent,
                                          ),
                                        ),
                                      ),
                                    ),
                                    ClipOval(
                                      child: Container(
                                        height: 15.0, // height of the button
                                        width: 15.0, // width of the button
                                        child: Center(
                                          child: Icon(
                                            Icons.radio_button_checked,
                                            size: 15,
                                            color: Color(0xFFF2F2F2),
                                          ),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                      ClipRRect(
                        // borderRadius: BorderRadius.only(topRight: Radius.circular(10.0), topLeft: Radius.circular(10.0)),
                        child: Stack(
                          children: <Widget>[
                            ClipRRect(
                              // borderRadius: BorderRadius.only(topRight: Radius.circular(10.0), topLeft: Radius.circular(10.0)),
                              child: Image(
                                fit: BoxFit.fill,
                                image: AssetImage('assets/images/premium_bg.jpg'),
                                width: MediaQuery.of(context).size.width,
                              ),
                            ),
                            Container(
                              height: 255,
                              decoration: new BoxDecoration(
                                // borderRadius: BorderRadius.only(topLeft: Radius.circular(10.0), topRight: Radius.circular(10.0)),
                                color: Color(0xFF2F3444).withOpacity(0.8),
                                shape: BoxShape.rectangle,
                              ),
                            ),
                            Container(
                              decoration: new BoxDecoration(
                                // borderRadius: BorderRadius.only(topLeft: Radius.circular(10.0), topRight: Radius.circular(10.0)),
                                shape: BoxShape.rectangle,
                              ),
                              padding: EdgeInsets.all(20),
                              height: 255,
                              width: MediaQuery.of(context).size.width,
                              child: Center(
                                child: Text(
                                  "CONTACTA Y EMPIEZA A HABLAR",
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: MediaQuery.of(context).size.width/11,
                                    fontWeight: FontWeight.w700,
                                    fontFamily: "Roboto"),
                                ),
                              ),
                            ),
                            Positioned(
                              bottom: 10,
                              left: (MediaQuery.of(context).size.width / 2) - 40,
                              child: Container(
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: <Widget>[
                                    ClipOval(
                                      child: Container(
                                        height: 15.0, // height of the button
                                        width: 15.0, // width of the button
                                        child: Center(
                                          child: Icon(
                                            Icons.radio_button_checked,
                                            size: 15,
                                            color: Color(0xFFF2F2F2),
                                          ),
                                        ),
                                      ),
                                    ),
                                    ClipOval(
                                      child: Container(
                                        height: 15.0, // height of the button
                                        width: 15.0, // width of the button
                                        child: Center(
                                          child: Icon(
                                            Icons.radio_button_checked,
                                            size: 15,
                                            color: Color(0xFFF2F2F2),
                                          ),
                                        ),
                                      ),
                                    ),
                                    ClipOval(
                                      child: Container(
                                        height: 15.0, // height of the button
                                        width: 15.0, // width of the button
                                        child: Center(
                                          child: Icon(
                                            Icons.radio_button_checked,
                                            size: 15,
                                            color: Colors.redAccent,
                                          ),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            )
                          ],
                        ),
                      )
                    ],
                    autoplay: true,
                    autoplayDuration: Duration(seconds: 5),
                    animationDuration: Duration(milliseconds: 1),
                    dotBgColor: Colors.transparent,
                    dotSize: 4,
                    dotColor: Colors.transparent,  
                    dotIncreasedColor: Colors.transparent,             
                  ),
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height*0.02,
                ),
                Container(
                  margin: EdgeInsets.only(
                    left: MediaQuery.of(context).size.width*0.06,
                    right: MediaQuery.of(context).size.width*0.06,
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      GestureDetector(
                        onTap: (){
                          optChecked = 0;
                          setState(() {});
                        },
                        child: optChecked == 0 
                          ? Container(
                              width: MediaQuery.of(context).size.width*0.27,
                              height: MediaQuery.of(context).size.height*0.27,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10.0),
                                border: Border.all(
                                  width: 2,
                                  color: Color(0xFFE13131),
                                ),
                                color: Colors.white,
                              ),
                              child: Stack(
                                children: <Widget>[
                                  Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    crossAxisAlignment: CrossAxisAlignment.center,
                                    children: <Widget>[
                                      Align(
                                        alignment: Alignment.center,
                                        child: Text(
                                          "1",
                                          style: TextStyle(
                                            fontSize: MediaQuery.of(context).size.width*0.11,
                                            fontWeight: FontWeight.w700,
                                            color: Color(0xFF777777),
                                          ),
                                        ),
                                      ),
                                      Align(
                                        alignment: Alignment.center,
                                        child: Text(
                                          "Mes",
                                          style: TextStyle(
                                            fontSize: MediaQuery.of(context).size.width*0.07,
                                            fontWeight: FontWeight.w400,
                                            color: Color(0xFF777777),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                  Positioned(
                                    bottom: 0,
                                    left: 0,
                                    child: Center(
                                      child: Container(
                                        height: MediaQuery.of(context).size.height*0.04,
                                        width: MediaQuery.of(context).size.width*0.27,
                                        decoration: BoxDecoration(
                                          borderRadius: BorderRadius.only(
                                            bottomLeft: Radius.circular(10),
                                            bottomRight: Radius.circular(10),
                                          ),
                                          border: Border.all(
                                            width: MediaQuery.of(context).size.width*0.008,
                                            color: Color(0xFFE13131),
                                            style: BorderStyle.solid,
                                          ),
                                          color: Color(0xFFE13131),
                                        ),
                                        child: Align(
                                          alignment: Alignment.center,
                                          child: Text(
                                            "\$13.900",
                                            textAlign: TextAlign.center,
                                            style: TextStyle(
                                              color: Colors.white,
                                            ),
                                          ),
                                        ),
                                      ),
                                    ),
                                  )
                                ],
                              ),
                            ) 
                          : Container(
                            width: MediaQuery.of(context).size.width*0.22,
                            height: MediaQuery.of(context).size.height*0.23,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10.0),
                              border: Border.all(
                                width: 1,
                                color: Color(0xFF293143),
                              ),
                              color: Colors.white,
                            ),
                            child: Stack(
                              children: <Widget>[
                                Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: <Widget>[
                                    Align(
                                      alignment: Alignment.center,
                                      child: Text(
                                        "1",
                                        style: TextStyle(
                                          fontSize: MediaQuery.of(context).size.width*0.11,
                                          fontWeight: FontWeight.w700,
                                          color: Color(0xFF777777),
                                        ),
                                      ),
                                    ),
                                    Align(
                                      alignment: Alignment.center,
                                      child: Text(
                                        "Mes",
                                        style: TextStyle(
                                          fontSize: MediaQuery.of(context).size.width*0.07,
                                          fontWeight: FontWeight.w400,
                                          color: Color(0xFF777777),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                                Positioned(
                                  bottom: 0,
                                  left: 0,
                                  child: Center(
                                    child: Container(
                                      height: MediaQuery.of(context).size.height*0.035,
                                      width: MediaQuery.of(context).size.width*0.22,
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.only(
                                          bottomLeft: Radius.circular(10),
                                          bottomRight: Radius.circular(10),
                                        ),
                                        border: Border.all(
                                          width: MediaQuery.of(context).size.width*0.008,
                                          color: Color(0xFF293143),
                                          style: BorderStyle.solid,
                                        ),
                                        color: Color(0xFF293143),
                                      ),
                                      child: Align(
                                        alignment: Alignment.center,
                                        child: Text(
                                          "\$13.900",
                                          textAlign: TextAlign.center,
                                          style: TextStyle(
                                            color: Colors.white,
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                )
                              ],
                            ),
                          ),
                      ),
                      SizedBox(width: MediaQuery.of(context).size.width*0.02),
                      GestureDetector(
                        onTap: (){
                          optChecked = 1;
                          setState(() {});
                        },
                        child: optChecked == 1 
                          ? Container(
                              width: MediaQuery.of(context).size.width*0.27,
                              height: MediaQuery.of(context).size.height*0.27,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10.0),
                                border: Border.all(
                                  width: 2,
                                  color: Color(0xFFE13131),
                                ),
                                color: Colors.white,
                              ),
                              child: Stack(
                                children: <Widget>[
                                  Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    crossAxisAlignment: CrossAxisAlignment.center,
                                    children: <Widget>[
                                      Align(
                                        alignment: Alignment.center,
                                        child: Text(
                                          "6",
                                          style: TextStyle(
                                            fontSize: MediaQuery.of(context).size.width*0.11,
                                            fontWeight: FontWeight.w700,
                                            color: Color(0xFF777777),
                                          ),
                                        ),
                                      ),
                                      Align(
                                        alignment: Alignment.center,
                                        child: Text(
                                          "Meses",
                                          style: TextStyle(
                                            fontSize: MediaQuery.of(context).size.width*0.07,
                                            fontWeight: FontWeight.w400,
                                            color: Color(0xFF777777),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                  Positioned(
                                    bottom: 0,
                                    left: 0,
                                    child: Center(
                                      child: Container(
                                        height: MediaQuery.of(context).size.height*0.04,
                                        width: MediaQuery.of(context).size.width*0.27,
                                        decoration: BoxDecoration(
                                          borderRadius: BorderRadius.only(
                                            bottomLeft: Radius.circular(10),
                                            bottomRight: Radius.circular(10),
                                          ),
                                          border: Border.all(
                                            width: MediaQuery.of(context).size.width*0.008,
                                            color: Color(0xFFE13131),
                                            style: BorderStyle.solid,
                                          ),
                                          color: Color(0xFFE13131),
                                        ),
                                        child: Align(
                                          alignment: Alignment.center,
                                          child: Text(
                                            "\$54.900",
                                            textAlign: TextAlign.center,
                                            style: TextStyle(
                                              color: Colors.white,
                                            ),
                                          ),
                                        ),
                                      ),
                                    ),
                                  )
                                ],
                              ),
                            ) 
                          : Container(
                            width: MediaQuery.of(context).size.width*0.22,
                            height: MediaQuery.of(context).size.height*0.23,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10.0),
                              border: Border.all(
                                width: 1,
                                color: Color(0xFF293143),
                              ),
                              color: Colors.white,
                            ),
                            child: Stack(
                              children: <Widget>[
                                Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: <Widget>[
                                    Align(
                                      alignment: Alignment.center,
                                      child: Text(
                                        "6",
                                        style: TextStyle(
                                          fontSize: MediaQuery.of(context).size.width*0.11,
                                          fontWeight: FontWeight.w700,
                                          color: Color(0xFF777777),
                                        ),
                                      ),
                                    ),
                                    Align(
                                      alignment: Alignment.center,
                                      child: Text(
                                        "Meses",
                                        style: TextStyle(
                                          fontSize: MediaQuery.of(context).size.width*0.07,
                                          fontWeight: FontWeight.w400,
                                          color: Color(0xFF777777),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                                Positioned(
                                  bottom: 0,
                                  left: 0,
                                  child: Center(
                                    child: Container(
                                      height: MediaQuery.of(context).size.height*0.035,
                                      width: MediaQuery.of(context).size.width*0.22,
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.only(
                                          bottomLeft: Radius.circular(10),
                                          bottomRight: Radius.circular(10),
                                        ),
                                        border: Border.all(
                                          width: MediaQuery.of(context).size.width*0.008,
                                          color: Color(0xFF293143),
                                          style: BorderStyle.solid,
                                        ),
                                        color: Color(0xFF293143),
                                      ),
                                      child: Align(
                                        alignment: Alignment.center,
                                        child: Text(
                                          "\$54.900",
                                          textAlign: TextAlign.center,
                                          style: TextStyle(
                                            color: Colors.white,
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                )
                              ],
                            ),
                          ),
                      ),
                      SizedBox(width: MediaQuery.of(context).size.width*0.02),
                      GestureDetector(
                        onTap: (){
                          optChecked = 2;
                          setState(() {});
                        },
                        child: optChecked == 2 
                          ? Container(
                              // width: 110,
                              width: MediaQuery.of(context).size.width*0.27,
                              height: MediaQuery.of(context).size.height*0.27,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10.0),
                                border: Border.all(
                                  width: 2,
                                  color: Color(0xFFE13131),
                                ),
                                color: Colors.white,
                              ),
                              child: Stack(
                                children: <Widget>[
                                  Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    crossAxisAlignment: CrossAxisAlignment.center,
                                    children: <Widget>[
                                      Align(
                                        alignment: Alignment.center,
                                        child: Text(
                                          "12",
                                          style: TextStyle(
                                            fontSize: MediaQuery.of(context).size.width*0.11,
                                            fontWeight: FontWeight.w700,
                                            color: Color(0xFF777777),
                                          ),
                                        ),
                                      ),
                                      Align(
                                        alignment: Alignment.center,
                                        child: Text(
                                          "Meses",
                                          style: TextStyle(
                                            fontSize: MediaQuery.of(context).size.width*0.07,
                                            fontWeight: FontWeight.w400,
                                            color: Color(0xFF777777),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                  Positioned(
                                    bottom: 0,
                                    left: 0,
                                    child: Center(
                                      child: Container(
                                        height: MediaQuery.of(context).size.height*0.04,
                                        width: MediaQuery.of(context).size.width*0.27,
                                        decoration: BoxDecoration(
                                          borderRadius: BorderRadius.only(
                                            bottomLeft: Radius.circular(10),
                                            bottomRight: Radius.circular(10),
                                          ),
                                          border: Border.all(
                                            width: MediaQuery.of(context).size.width*0.008,
                                            color: Color(0xFFE13131),
                                            style: BorderStyle.solid,
                                          ),
                                          color: Color(0xFFE13131),
                                        ),
                                        child: Align(
                                          alignment: Alignment.center,
                                          child: Text(
                                            "\$84.900",
                                            textAlign: TextAlign.center,
                                            style: TextStyle(
                                              color: Colors.white,
                                            ),
                                          ),
                                        ),
                                      ),
                                    ),
                                  )
                                ],
                              ),
                            ) 
                          : Container(
                            width: MediaQuery.of(context).size.width*0.22,
                            height: MediaQuery.of(context).size.height*0.23,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10.0),
                              border: Border.all(
                                width: 1,
                                color: Color(0xFF293143),
                              ),
                              color: Colors.white,
                            ),
                            child: Stack(
                              children: <Widget>[
                                Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: <Widget>[
                                    Align(
                                      alignment: Alignment.center,
                                      child: Text(
                                        "12",
                                        style: TextStyle(
                                          fontSize: 40,
                                          fontWeight: FontWeight.w700,
                                          color: Color(0xFF777777),
                                        ),
                                      ),
                                    ),
                                    Align(
                                      alignment: Alignment.center,
                                      child: Text(
                                        "Meses",
                                        style: TextStyle(
                                          fontSize: 25,
                                          fontWeight: FontWeight.w400,
                                          color: Color(0xFF777777),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                                Positioned(
                                  bottom: 0,
                                  left: 0,
                                  child: Center(
                                    child: Container(
                                      height: MediaQuery.of(context).size.height*0.035,
                                      width: MediaQuery.of(context).size.width*0.22,
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.only(
                                          bottomLeft: Radius.circular(10),
                                          bottomRight: Radius.circular(10),
                                        ),
                                        border: Border.all(
                                          width: 3,
                                          color: Color(0xFF293143),
                                          style: BorderStyle.solid,
                                        ),
                                        color: Color(0xFF293143),
                                      ),
                                      child: Align(
                                        alignment: Alignment.center,
                                        child: Text(
                                          "\$84.900",
                                          textAlign: TextAlign.center,
                                          style: TextStyle(
                                            color: Colors.white,
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                )
                              ],
                            ),
                          ),
                      )
                    ],
                  ),
                ),
                SizedBox(
                  height: 15.0,
                ),
                Align(
                  alignment: Alignment.center,
                  child: Container(
                    width: MediaQuery.of(context).size.width*0.55,
                    child: CustomButtonDark(
                      text: "COMPRAR",
                      onPressed: () {
                        Navigator.of(context).pop(); // To close the dialog
                      },
                    ),
                  ),
                ),
                Align(
                  alignment: Alignment.center,
                  child: Container(
                    margin: EdgeInsets.only(top: MediaQuery.of(context).size.height*0.00),
                    width: MediaQuery.of(context).size.width*0.55,
                    height: MediaQuery.of(context).size.height*0.1,
                    child: CustomButtonTransparent(
                      text: "CANCELAR",
                      onPressed: () {
                        Navigator.of(context).pop(); // To close the dialog
                      },
                    ),
                  ),
                ),
                Align(
                  alignment: Alignment.center,
                  child: Container(
                    // margin: EdgeInsets.only(top: 20.0, bottom: 20.0),
                    width: MediaQuery.of(context).size.width*0.55,
                    child: Text(
                      "Eros People Premium es un plan de suscripción mensual recurrente que te da acceso a todas sus características.",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: MediaQuery.of(context).size.width*0.03,
                        fontFamily: "Roboto",
                        fontWeight: FontWeight.w300,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class Consts {
  Consts._();

  static const double padding = 16.0;
  static const double avatarRadius = 66.0;
}
