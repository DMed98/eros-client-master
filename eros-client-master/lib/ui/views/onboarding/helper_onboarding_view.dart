import 'package:eros_app/ui/widgets/custom_button_red.dart';
import 'package:eros_app/ui/widgets/general_member.dart';
import 'package:flutter/material.dart';

class HelperOnboardingView extends StatefulWidget {
  static const routeName = '/helper_onboarding';

  @override
  _HelperOnboardingViewState createState() => _HelperOnboardingViewState();
}

class _HelperOnboardingViewState extends State<HelperOnboardingView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Stack(
          fit: StackFit.expand,
          children: <Widget>[
            Positioned(
              bottom: 0,
              top: 0,
              left: 0,
              right: 0,
              child: GeneralMember(
                gender: 'woman',
              ),
            ),
            Positioned(
              bottom: 0,
              top: 0,
              left: 0,
              right: 0,
              child: Container(
                decoration: new BoxDecoration(
                  border: new Border.all(width: 1, color: Colors.transparent),
                  color: new Color.fromRGBO(41, 49, 67,
                      0.90), // Specifies the background color and the opacity
                ),
              ),
            ),
            Positioned(
              bottom: 0,
              top: 0,
              left: 0,
              right: 0,
              child: Stack(
                fit: StackFit.expand,
                children: <Widget>[
                  Positioned(
                    bottom: 0,
                    top: 100,
                    left: 0,
                    right: 0,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Container(
                          margin: EdgeInsets.only(left: 20.0, bottom: 20),
                          child: GestureDetector(
                            onTap: () {
                              setState(() {});
                            },
                            child: Center(
                              child: Image(
                                image: AssetImage('assets/images/dots.png'),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Positioned(
                    bottom: 0,
                    top: 240,
                    left: 50,
                    right: 0,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Container(
                          margin: EdgeInsets.only(left: 20.0, bottom: 20),
                          child: GestureDetector(
                            onTap: () {
                              setState(() {});
                            },
                            child: Image(
                              image: AssetImage('assets/images/touch.png'),
                            ),
                          ),
                        ),
                        Container(
                          width: 100,
                          child: Text(
                            "Presiona para retroceder",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 12,
                              fontFamily: "Roboto",
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Positioned(
                    bottom: 0,
                    top: 240,
                    right: 50,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Container(
                          margin: EdgeInsets.only(left: 20.0, bottom: 20),
                          child: GestureDetector(
                            onTap: () {

                            },
                            child: Image(
                              image: AssetImage('assets/images/touch.png'),
                            ),
                          ),
                        ),
                        Container(
                          width: 100,
                          child: Text(
                            "Presiona para ver más fotos",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 12,
                              fontFamily: "Roboto",
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Positioned(
              top: 370,
              right: 30,
              child: GestureDetector(
                onTap: () {
                  Navigator.of(context)
                      .pushNamed('/swipe_woman_onboarding');
                },
                child: ClipOval(
                  child: Container(
                    color: Color(0xFFF2F2F2),
                    height: 38.0, // height of the button
                    width: 38.0, // width of the button
                    child: Center(
                      child: Icon(
                        Icons.expand_more,
                        size: 38,
                        color: Color(0xFFE13131),
                      ),
                    ),
                  ),
                ),
              ),
            ),
            Positioned(
              bottom: 0,
              top: 350,
              left: 0,
              right: 0,
              child: Container(
                margin: EdgeInsets.all(30),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Text(
                      "¿QUIERES SABER MAS?",
                      style: TextStyle(
                        fontSize: 45.0,
                        color: Colors.white,
                        fontFamily: "Roboto",
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(
                        top: 20.0,
                      ),
                      child: Text(
                        "Presiona para conoce más sobre éste perfil que te interesa",
                        style: TextStyle(
                          color: Colors.white,
                          fontFamily: "Roboto",
                          fontSize: 18.0,
                          fontWeight: FontWeight.w300,
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
    );
  }
}
