import 'package:eros_app/ui/widgets/custom_button_dark.dart';
import 'package:eros_app/ui/widgets/custom_textfield.dart';
import 'package:flutter/material.dart';

class AccountView extends StatefulWidget {
  @override
  _AccountViewState createState() => _AccountViewState();
}

class _AccountViewState extends State<AccountView> {
  TextEditingController _nameController = TextEditingController();
  FocusNode _focusName = FocusNode();
  TextEditingController _emailController = TextEditingController();
  FocusNode _focusEmail = FocusNode();
  TextEditingController _ageController = TextEditingController();
  FocusNode _focusAge = FocusNode();

  @override
  void dispose() {
    _nameController.dispose();
    _focusName.dispose();
    _emailController.dispose();
    _focusEmail.dispose();
    _ageController.dispose();
    _focusAge.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      minimum: EdgeInsets.only(top: 30.0),
      top: true,
      child: Scaffold(
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
            "Información de la Cuenta",
            style: TextStyle(
              color: Color(0xFF262626),
              fontSize: 20.0,
              fontFamily: "Roboto",
            ),
          ),
        ),
        body: Container(
          margin: EdgeInsets.only(top: 20),
          padding: EdgeInsets.all(20),
          child: CustomScrollView(
            slivers: <Widget>[
              SliverToBoxAdapter(
                child: Column(
                  children: <Widget>[
                    Container(
                      margin: EdgeInsets.only(top: 50),
                      child: Column(
                        children: <Widget>[
                          Container(
                            child: CustomFieldText(
                              controller: _nameController,
                              hintText: "Nombre Completo",
                              obscureText: false,
                              validatorText: '',
                              focusNode: this._focusName,
                              title: "Nombre",
                              prefix: true,
                            ),
                          ),
                          Container(
                            child: CustomFieldText(
                              controller: _emailController,
                              hintText: "Correo electrónico",
                              obscureText: false,
                              validatorText: '',
                              focusNode: this._focusEmail,
                              title: "Correo",
                              prefix: true,
                            ),
                          ),
                          Container(
                            child: CustomFieldText(
                              controller: _ageController,
                              hintText: "Edad",
                              obscureText: false,
                              validatorText: '',
                              focusNode: this._focusAge,
                              title: "Años",
                              prefix: true,
                            ),
                          ),
                          Align(
                            alignment: Alignment.center,
                            child: Container(
                              margin: EdgeInsets.only(top: 30),
                              width: MediaQuery.of(context).size.width - 120,
                              child: CustomButtonDark(
                                text: "GUARDAR",
                                onPressed: () {
                                  Navigator.of(context).pop(); // To close the dialog
                                },
                              ),
                            ),
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
