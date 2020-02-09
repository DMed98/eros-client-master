import 'package:eros_app/ui/widgets/custom_dialog.dart';
import 'package:eros_app/ui/widgets/custom_textfield.dart';
import 'package:eros_app/ui/widgets/profile_photo.dart';
import 'package:flutter/material.dart';

class ProfileEditView extends StatefulWidget {
  static const routeName = '/profile_edit';

  @override
  _ProfileEditViewState createState() => _ProfileEditViewState();
}

class _ProfileEditViewState extends State<ProfileEditView> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  TextEditingController _whatsappController = TextEditingController();
  FocusNode _focusWhatsapp = FocusNode();
  TextEditingController _messengerController = TextEditingController();
  FocusNode _focusMessenger = FocusNode();

  List<String> genders = ["Mujer", "Hombre", "Transgénero"];
  List<String> genderPreferents = [
    "Heterosexual",
    "Bisexual",
    "Homosexual",
    "Transexual"
  ];
  List<String> searching = ["Mujeres", "Hombres", "Gays"];
  List<String> erotic = ["Mensajes", "Juguetes"];
  List<String> sexuals = ["Trios", "Intercambios"];

  @override
  void dispose() {
    _whatsappController.dispose();
    _focusWhatsapp.dispose();
    _messengerController.dispose();
    _focusMessenger.dispose();
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
            "Perfil",
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
                    IgnorePointer(
                      child: Container(
                        height: MediaQuery.of(context).size.height*0.9,
                        child: GridView.count(
                          crossAxisCount: 2,
                          children: List.generate(6, (index) {
                            return ProfilePhoto();
                          }),
                        ),
                      ),
                    ),
                    Container(
                      child: Text(
                        "Contacto",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: Color(0xFF2F3444),
                          fontSize: 25.0,
                          fontFamily: "Roboto",
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ),
                    Container(
                      width: MediaQuery.of(context).size.width - 100.0,
                      margin: EdgeInsets.only(
                        bottom: 5.0,
                        top: 60.0,
                      ),
                      child: Form(
                        key: _formKey,
                        child: Column(
                          children: <Widget>[
                            CustomFieldText(
                              controller: _whatsappController,
                              hintText: "WhatsApp",
                              obscureText: false,
                              validatorText: '',
                              focusNode: this._focusWhatsapp,
                              title: null,
                              prefix: false,
                            ),
                            CustomFieldText(
                              controller: _messengerController,
                              hintText: "Facebook Messenger",
                              obscureText: false,
                              validatorText: '',
                              focusNode: this._focusMessenger,
                              title: null,
                              prefix: false,
                            ),
                          ],
                        ),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(
                        bottom: 5.0,
                        top: 60.0,
                      ),
                      child: Text(
                        "Información Básica",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: Color(0xFF2F3444),
                          fontSize: 25.0,
                          fontFamily: "Roboto",
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(
                        bottom: 5.0,
                        top: 60.0,
                      ),
                      child: CustomDialog(
                        type: "Género",
                        description: "Mujer, hombre, etc.",
                        items: genders,
                        extend: false,
                        value: null,
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(
                        bottom: 5.0,
                        top: 20.0,
                      ),
                      child: CustomDialog(
                        type: "Soy",
                        description: "Heterosexual, bisexual",
                        items: genderPreferents,
                        extend: false,
                        value: null,
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(
                        bottom: 5.0,
                        top: 20.0,
                      ),
                      child: CustomDialog(
                        type: "Busco",
                        description: "Mujeres, hombres, gays",
                        items: searching,
                        extend: false,
                        value: null,
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(
                        bottom: 5.0,
                        top: 60.0,
                      ),
                      child: Text(
                        "Bio",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: Color(0xFF2F3444),
                          fontSize: 25.0,
                          fontFamily: "Roboto",
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(
                        bottom: 5.0,
                        top: 60.0,
                      ),
                      child: CustomDialog(
                        type: "Sobre mi",
                        description: "Una descripción breve sobre ti.",
                        items: erotic,
                        extend: true,
                        value: null,
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(
                        bottom: 5.0,
                        top: 60.0,
                      ),
                      child: Text(
                        "Gustos",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: Color(0xFF2F3444),
                          fontSize: 25.0,
                          fontFamily: "Roboto",
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(
                        bottom: 5.0,
                        top: 60.0,
                      ),
                      child: CustomDialog(
                        type: "Eróticos",
                        description: "Mensajes, juguetes, etc.",
                        items: erotic,
                        extend: false,
                        value: null,
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(
                        bottom: 5.0,
                        top: 20.0,
                      ),
                      child: CustomDialog(
                        type: "Sexuales",
                        description: "Trios, intercambios, etc.",
                        items: sexuals,
                        extend: false,
                        value: null,
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(
                        bottom: 5.0,
                        top: 20.0,
                      ),
                      child: CustomDialog(
                        type: "Fetiches",
                        description: "Descríbelos ....",
                        items: null,
                        extend: true,
                        value: null,
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(
                        bottom: 5.0,
                        top: 20.0,
                      ),
                      child: CustomDialog(
                        type: "Fantasías sexuales",
                        description: "Descríbelos ....",
                        items: null,
                        extend: true,
                        value: null,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
