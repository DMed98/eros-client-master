import 'package:eros_app/bloc/eros_bloc.dart';
import 'package:eros_app/model/User.dart';
import 'package:eros_app/ui/widgets/custom_button_dark.dart';
import 'package:eros_app/ui/widgets/snack_bar.dart';
import 'package:flutter/material.dart';
import 'package:generic_bloc_provider/generic_bloc_provider.dart';

class LoginView extends StatefulWidget {
  static const routeName = '/login';

  @override
  _LoginViewState createState() => _LoginViewState();
}

class _LoginViewState extends State<LoginView> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  bool _autoValidate = false;

  TextEditingController _emailController = TextEditingController();
  FocusNode _emailFocus = FocusNode();
  TextEditingController _passwordController = TextEditingController();
  FocusNode _passwordFocus = FocusNode();

  ErosBloc _erosBloc;

  String _email;
  String _password;

  @override
  void initState() {
    _emailController.text = "test@erospeople.com";
    _passwordController.text = "1234";
    super.initState();
  }

  @override
  void dispose() {
    _emailController.dispose();
    _emailFocus.dispose();
    _passwordController.dispose();
    _passwordFocus.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    _erosBloc = BlocProvider.of<ErosBloc>(context);
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
      ),
      body: CustomScrollView(
        slivers: <Widget>[
          SliverToBoxAdapter(
            child: Container(
              alignment: Alignment.center,
              margin: EdgeInsets.all(20.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: <Widget>[
                  Text(
                    "Iniciar Sesión",
                    textAlign: TextAlign.left,
                    style: TextStyle(
                      fontSize: 40.0,
                      fontFamily: "Roboto",
                    ),
                  ),
                  Form(
                    key: _formKey,
                    autovalidate: _autoValidate,
                    child: Container(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: <Widget>[
                          Container(
                            margin: EdgeInsets.only(top: 80.0),
                            child: emailFormField(context, _erosBloc),
                          ),
                          Container(
                            margin: EdgeInsets.only(top: 20.0),
                            child: passwordFormField(context, _erosBloc),
                          ),
                          Container(
                            margin: EdgeInsets.only(
                              top: 90.0,
                              left: 40.0,
                              right: 40.0,
                            ),
                            child: CustomButtonDark(
                              text: "INICIAR SESIÓN",
                              onPressed: () {
                                if (_emailController.text ==
                                        'test@erospeople.com' &&
                                    _passwordController.text == '1234') {
                                  Navigator.of(context)
                                      .pushNamed('/welcome_onboarding');
                                } else {
                                  //Show Message
                                  showInSnackBar(
                                    "Credenciales de acceso erróneas",
                                    Color(0xFFFFFFFF),
                                    Icons.description,
                                    context,
                                  );
                                }

                                /*User logIn = new User(
                                  email: _emailController.text,
                                  password: _passwordController.text,
                                );

                                _erosBloc.logIn(logIn, context).then((user) {
                                  print(user.toMap());
                                  if (user.id != null) {
                                    //prefs.setBool('isLogged', true);
                                    //prefs.setInt('userId', user.userID);
                                    /*_vypeBloc.saveUser(user).then((_) {
                                      //Redirect
                                      Navigator.pushNamed(context, '/home');
                                    });*/
                                  } else {
                                    //prefs.setBool('isLogged', false);
                                    //prefs.setInt('userId', 0);
                                    showInSnackBar(
                                      "Credenciales erróneas",
                                      Colors.white,
                                      Icons.person,
                                      context,
                                    );
                                  }
                                }); */


                              },
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.only(
                              top: 20.0,
                            ),
                            child: GestureDetector(
                              onTap: () {
                                print("Password");
                              },
                              child: Text(
                                "Olvidé mi contraseña",
                                textAlign: TextAlign.center,
                                style: TextStyle(fontSize: 16.0),
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
          )
        ],
      ),
    );
  }

  StreamBuilder emailFormField(BuildContext context, ErosBloc bloc) {
    return StreamBuilder(
      stream: bloc.email,
      builder: (context, snapshot) {
        return TextFormField(
          controller: _emailController,
          keyboardType: TextInputType.emailAddress,
          style: TextStyle(
            color: Color(0xFF777777),
            fontSize: 15,
          ),
          textInputAction: TextInputAction.next,
          focusNode: _emailFocus,
          autocorrect: false,
          onChanged: bloc.changeEmail,
          onSaved: (value) {
            _email = value;
          },
          decoration: InputDecoration(
            contentPadding: EdgeInsets.all(20.0),
            errorStyle: TextStyle(
              fontFamily: 'Roboto',
              color: Colors.red,
              wordSpacing: 1.0,
            ),
            hintText: "Correo Electrónico",
            hintStyle: TextStyle(
              color: Color(0xFF293143),
              fontSize: 15,
              fontFamily: 'Roboto',
            ),
            fillColor: Colors.black,
            hoverColor: Colors.black,
            focusColor: Colors.black,
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(50.0),
              borderSide: BorderSide(color: Color(0xFF293143), width: 1),
            ),
            enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(50.0),
              borderSide: BorderSide(color: Color(0xFF293143), width: 1),
            ),
            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(50.0),
              borderSide: BorderSide(color: Color(0xFF293143), width: 1),
            ),
            errorText: snapshot.error,
          ),
        );
      },
    );
  }

  StreamBuilder passwordFormField(BuildContext context, ErosBloc bloc) {
    return StreamBuilder(
      stream: bloc.password,
      builder: (context, snapshot) {
        return TextFormField(
          controller: _passwordController,
          keyboardType: TextInputType.text,
          obscureText: true,
          style: TextStyle(
            color: Color(0xFF777777),
            fontSize: 15,
          ),
          textInputAction: TextInputAction.next,
          focusNode: _passwordFocus,
          autocorrect: false,
          onChanged: bloc.changePassword,
          onSaved: (value) {
            _password = value;
          },
          decoration: InputDecoration(
            contentPadding: EdgeInsets.all(20.0),
            errorStyle: TextStyle(
              fontFamily: 'Roboto',
              color: Colors.red,
              wordSpacing: 1.0,
            ),
            hintText: "Contraseña",
            hintStyle: TextStyle(
              color: Color(0xFF293143),
              fontSize: 15,
              fontFamily: 'Roboto',
            ),
            fillColor: Colors.black,
            hoverColor: Colors.black,
            focusColor: Colors.black,
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(50.0),
              borderSide: BorderSide(color: Color(0xFF293143), width: 1),
            ),
            enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(50.0),
              borderSide: BorderSide(color: Color(0xFF293143), width: 1),
            ),
            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(50.0),
              borderSide: BorderSide(color: Color(0xFF293143), width: 1),
            ),
            errorText: snapshot.error,
          ),
        );
      },
    );
  }
}
