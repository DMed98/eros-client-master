import 'dart:async';

import 'package:eros_app/bloc/eros_bloc.dart';
import 'package:eros_app/ui/views/home_view.dart';
import 'package:eros_app/ui/views/login_view.dart';
import 'package:eros_app/ui/views/main_view.dart';
import 'package:eros_app/ui/views/onboarding/helper_onboarding_view.dart';
import 'package:eros_app/ui/views/onboarding/profile_onboarding_view.dart';
import 'package:eros_app/ui/views/onboarding/swipe_man_onboarding_view.dart';
import 'package:eros_app/ui/views/onboarding/swipe_woman_onboarding_view.dart';
import 'package:eros_app/ui/views/profile_edit_view.dart';
import 'package:eros_app/ui/views/profile_view.dart';
import 'package:eros_app/ui/views/register_view.dart';
import 'package:eros_app/ui/views/settings_view.dart';
import 'package:eros_app/ui/views/term_view.dart';
import 'package:eros_app/ui/views/onboarding/welcome_onboarding_view.dart';
import 'package:flutter/material.dart';
import 'package:generic_bloc_provider/generic_bloc_provider.dart';

void main() => runApp(BlocProvider(
      bloc: ErosBloc(),
      child: MyApp(),
    ));

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      color: Colors.white,
      initialRoute: '/',
      routes: <String, WidgetBuilder>{
        '/': (context) => new SplashView(),
        MainView.routeName: (context) => MainView(),
        LoginView.routeName: (context) => LoginView(),
        RegisterView.routeName: (context) => RegisterView(),
        TermView.routeName: (context) => TermView(),
        HomeView.routeName: (context) => HomeView(),
        ProfileView.routeName: (context) => ProfileView(),
        ProfileEditView.routeName: (context) => ProfileEditView(),
        //Onboarding
        WelcomeOnboardingView.routeName: (context) => WelcomeOnboardingView(),
        HelperOnboardingView.routeName: (context) => HelperOnboardingView(),
        ProfileOnboardingView.routeName: (context) => ProfileOnboardingView(),
        SwipeManOnboardingView.routeName: (context) => SwipeManOnboardingView(),
        SwipeWomanOnboardingView.routeName: (context) => SwipeWomanOnboardingView(),
      },
      theme: ThemeData(
        fontFamily: 'Roboto',
        primaryColor: Color.fromRGBO(0, 0, 0, 1),
        toggleableActiveColor: Color.fromRGBO(0, 0, 0, 1),
      ),
    );
  }
}

class SplashView extends StatefulWidget {
  @override
  _SplashViewState createState() => _SplashViewState();
}

class _SplashViewState extends State<SplashView> {
  @override
  void initState() {
    super.initState();
    Timer(Duration(seconds: 4), () => Navigator.pushNamed(context, '/main'));
  }

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
              child: Image(
                image: AssetImage('assets/images/splash_bg.png'),
                width: MediaQuery.of(context).size.width,
                fit: BoxFit.cover,
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
                      0.9), // Specifies the background color and the opacity
                ),
              ),
            ),
            Positioned(
              bottom: 0,
              top: 0,
              left: 0,
              right: 0,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Image(
                    image: AssetImage('assets/images/LogoTransparente.png'),
                    width: 250.0,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
