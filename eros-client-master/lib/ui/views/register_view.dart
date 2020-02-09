import 'package:eros_app/bloc/eros_bloc.dart';
import 'package:eros_app/ui/widgets/custom_button_dark.dart';
import 'package:flutter/material.dart';
import 'package:generic_bloc_provider/generic_bloc_provider.dart';

class RegisterView extends StatefulWidget {
  static const routeName = '/register';

  @override
  _RegisterViewState createState() => _RegisterViewState();
}

class _RegisterViewState extends State<RegisterView> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  bool _autoValidate = false;

  TextEditingController _nameController = TextEditingController();
  FocusNode _nameFocus = FocusNode();
  TextEditingController _emailController = TextEditingController();
  FocusNode _emailFocus = FocusNode();
  TextEditingController _passwordController = TextEditingController();
  FocusNode _passwordFocus = FocusNode();

  String _name;
  String _email;
  String _password;

  ErosBloc _erosBloc;

  @override
  void dispose() {
    _nameController.dispose();
    _nameFocus.dispose();
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
                    "Registro",
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
                            child: nameFormField(context, _erosBloc),
                          ),
                          Container(
                            margin: EdgeInsets.only(top: 30.0),
                            child: emailFormField(context, _erosBloc),
                          ),
                          Container(
                            margin: EdgeInsets.only(top: 30.0),
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
                                
                              },
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.only(
                              top: 20.0,
                            ),
                            child: GestureDetector(
                              onTap: () {
                                //Redirect To Term
                                Navigator.of(context).pushNamed('/term');
                              },
                              child: Text(
                                "Términos y condiciones",
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  fontSize: 16.0,
                                  color: Color(0xFF262626),
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
          )
        ],
      ),
    );
  }

  StreamBuilder nameFormField(BuildContext context, ErosBloc bloc) {
    return StreamBuilder(
      stream: bloc.name,
      builder: (context, snapshot) {
        return TextFormField(
          controller: _nameController,
          keyboardType: TextInputType.text,
          style: TextStyle(
            color: Color(0xFF777777),
            fontSize: 15,
          ),
          textInputAction: TextInputAction.next,
          focusNode: _nameFocus,
          autocorrect: false,
          onChanged: bloc.changeName,
          onSaved: (value) {
            _name = value;
          },
          decoration: InputDecoration(
            contentPadding: EdgeInsets.all(20.0),
            errorStyle: TextStyle(
              fontFamily: 'Roboto',
              color: Colors.red,
              wordSpacing: 1.0,
            ),
            hintText: "Nombre",
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
