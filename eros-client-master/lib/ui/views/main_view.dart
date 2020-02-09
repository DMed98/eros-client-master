import 'package:eros_app/ui/widgets/custom_button_dark.dart';
import 'package:eros_app/ui/widgets/custom_button_light.dart';
import 'package:flutter/material.dart';

class MainView extends StatefulWidget {
  static const routeName = '/main';

  @override
  _MainViewState createState() => _MainViewState();
}

class _MainViewState extends State<MainView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        margin: EdgeInsets.only(left: 40, right: 40),
        child: Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Container(
                child: Image(
                  image: AssetImage('assets/images/Logo@2x.png'),
                  width: 200.0,
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: 50.0),
                child: Text(
                  "Encuentra a ese erótico especial",
                  style: TextStyle(
                      fontSize: 25.0,
                      fontFamily: "Roboto",
                      fontWeight: FontWeight.w400),
                  textAlign: TextAlign.center,
                ),
              ),
              Container(
                margin: EdgeInsets.only(
                  top: 40.0,
                ),
                child: CustomButtonDark(
                  text: "INICIAR SESIÓN",
                  onPressed: () {
                    Navigator.of(context).pushNamed('/login');
                  },
                ),
              ),
              Container(
                margin: EdgeInsets.only(
                  top: 20.0,
                ),
                child: CustomButtonLight(
                  text: "REGISTRO",
                  onPressed: () {
                    Navigator.of(context).pushNamed('/register');
                  },
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
