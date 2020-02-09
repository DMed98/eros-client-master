import 'package:eros_app/ui/widgets/general_member.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:matrix4_transform/matrix4_transform.dart';

class SwipeWomanOnboardingView extends StatefulWidget {
  static const routeName = '/swipe_woman_onboarding';

  @override
  _SwipeWomanOnboardingViewState createState() =>
      _SwipeWomanOnboardingViewState();
}

class _SwipeWomanOnboardingViewState extends State<SwipeWomanOnboardingView> {
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
              child: Column(
                children: <Widget>[
                  Stack(
                    children: <Widget>[
                      Container(
                        child: GeneralMember(
                          gender: 'woman',
                        ),
                      ),
                      Container(
                        transform: Matrix4Transform()
                            .rotateDegrees(-10, origin: Offset(25, 25))
                            .translate(x: 140, y: 20)
                            .matrix4,
                        child: GeneralMember(
                          gender: 'woman',
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Positioned(
              bottom: 0,
              top: 180,
              left: 0,
              right: 0,
              child: Container(
                margin: EdgeInsets.all(30),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      "DESLIZAR A LA DERECHA",
                      style: TextStyle(
                          fontSize: 55.0,
                          color: Color(0xFFE13131),
                          fontFamily: "Roboto",
                          fontWeight: FontWeight.bold,
                          letterSpacing: -3),
                    ),
                    Container(
                      margin: EdgeInsets.only(
                        top: 20.0,
                      ),
                      child: Text(
                        "Envias un flechazo para conectar.",
                        textAlign: TextAlign.left,
                        style: TextStyle(
                          color: Color(0xFF777777),
                          fontFamily: "Roboto",
                          fontSize: 18.0,
                          fontWeight: FontWeight.w300,
                        ),
                      ),
                    ),
                    Align(
                      alignment: Alignment.bottomRight,
                      child: Container(
                        margin: EdgeInsets.only(
                          top: 20.0,
                        ),
                        child: GestureDetector(
                          onTap: () {
                            Navigator.of(context)
                                .pushNamed('/swipe_man_onboarding');
                          },
                          child: ClipOval(
                            child: Container(
                              color: Color(0xFFF2F2F2),
                              height: 38.0, // height of the button
                              width: 38.0, // width of the button
                              child: Center(
                                child: Icon(
                                  Icons.arrow_forward,
                                  size: 38,
                                  color: Color(0xFFE13131),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
