import 'package:eros_app/ui/widgets/custom_button_dark.dart';
import 'package:flutter/material.dart';

class TermView extends StatefulWidget {
  static const routeName = '/term';

  @override
  _TermViewState createState() => _TermViewState();
}

class _TermViewState extends State<TermView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        iconTheme: IconThemeData(color: Colors.black),
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Icon(Icons.arrow_back),
        ),
        title: Text(
          "Términos y condiciones",
          textAlign: TextAlign.center,
          style: TextStyle(
            fontFamily: "Roboto",
            fontSize: 16.0,
            color: Color(0xFF262626),
          ),
        ),
      ),
      body: CustomScrollView(
        slivers: <Widget>[
          SliverToBoxAdapter(
            child: Container(
              margin: EdgeInsets.all(20.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Container(
                    child: Text(
                      "Brief Overview",
                      textAlign: TextAlign.left,
                      style: TextStyle(
                        fontSize: 20.0,
                        fontFamily: "Roboto",
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 20),
                    child: Text(
                      "Ryan Adams, whose new album Prisoner is out this Friday, was the latest guest on Marc Maron’s podcast “WTF.” Adams discussed encountering the Rolling Stones early in his career (and talking penny loafers with drummer Charlie Watts), his struggles with addiction in the Easy Tiger era.",
                      textAlign: TextAlign.left,
                      style: TextStyle(
                        fontSize: 18.0,
                        fontFamily: "Roboto",
                        fontWeight: FontWeight.w300,
                      ),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 20),
                    child: Text(
                      "Brief Overview",
                      textAlign: TextAlign.left,
                      style: TextStyle(
                        fontSize: 20.0,
                        fontFamily: "Roboto",
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 20),
                    child: Text(
                      "Ryan Adams, whose new album Prisoner is out this Friday, was the latest guest on Marc Maron’s podcast “WTF.” Adams discussed encountering the Rolling Stones early in his career (and talking penny loafers with drummer Charlie Watts), his struggles with addiction in the Easy Tiger era.",
                      textAlign: TextAlign.left,
                      style: TextStyle(
                        fontSize: 18.0,
                        fontFamily: "Roboto",
                        fontWeight: FontWeight.w300,
                      ),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 20),
                    child: Text(
                      "Brief Overview",
                      textAlign: TextAlign.left,
                      style: TextStyle(
                        fontSize: 20.0,
                        fontFamily: "Roboto",
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 20),
                    child: Text(
                      "Ryan Adams, whose new album Prisoner is out this Friday, was the latest guest on Marc Maron’s podcast “WTF.” Adams discussed encountering the Rolling Stones early in his career (and talking penny loafers with drummer Charlie Watts), his struggles with addiction in the Easy Tiger era.",
                      textAlign: TextAlign.left,
                      style: TextStyle(
                        fontSize: 18.0,
                        fontFamily: "Roboto",
                        fontWeight: FontWeight.w300,
                      ),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(
                      top: 90.0,
                      left: 40.0,
                      right: 40.0,
                    ),
                    child: CustomButtonDark(
                      text: "ACEPTAR",
                      onPressed: () {},
                    ),
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
