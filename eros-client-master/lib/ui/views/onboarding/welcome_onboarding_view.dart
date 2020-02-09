import 'package:eros_app/ui/widgets/custom_button_red.dart';
import 'package:eros_app/ui/widgets/general_member.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class WelcomeOnboardingView extends StatefulWidget {
  static const routeName = '/welcome_onboarding';

  @override
  _WelcomeOnboardingViewState createState() => _WelcomeOnboardingViewState();
}

class _WelcomeOnboardingViewState extends State<WelcomeOnboardingView> {
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
              child: GeneralMember(gender: 'woman',),
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
              child: Container(
                margin: EdgeInsets.all(30),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Text(
                      "BIENVENIDO A EROS PEOPLE",
                      style: TextStyle(
                        fontSize: 55.0,
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
                        "La conexión perfecta para comenzar a hablar con tu erótico preferido.",
                        style: TextStyle(
                          color: Colors.white,
                          fontFamily: "Roboto",
                          fontSize: 18.0,
                          fontWeight: FontWeight.w300,
                        ),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(top: 80.0),
                      width: MediaQuery.of(context).size.width - 100,
                      child: CustomButtonRed(
                        text: "CONOCE EROS PEOPLE",
                        onPressed: () {
                          Navigator.of(context).pushNamed('/helper_onboarding');
                        },
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(top: 80.0),
                      width: MediaQuery.of(context).size.width - 100,
                      child: Column(
                        children: <Widget>[
                          Text(
                            "Visita nuestro sitio web",
                            style: TextStyle(
                              fontFamily: "Roboto",
                              color: Colors.white,
                              fontSize: 18,
                            ),
                          ),
                          RichText(
                            text: TextSpan(
                              children: [
                                TextSpan(
                                  text: 'www.erospeople.com',
                                  style: TextStyle(
                                    fontFamily: 'Raleway',
                                    fontSize: 18,
                                    color: Color(0xFFE13131),
                                    decoration: TextDecoration.underline,
                                  ),
                                  recognizer: TapGestureRecognizer()
                                    ..onTap = () {
                                      const url = 'https://www.erospeople.com';
                                      if (canLaunch(url) != null) {
                                        launch(url);
                                      } else {
                                        throw 'Could not launch $url';
                                      }
                                    },
                                ),
                              ],
                            ),
                          )
                        ],
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
