import 'package:eros_app/ui/views/account_view.dart';
import 'package:eros_app/ui/views/contact_view.dart';
import 'package:eros_app/ui/views/login_view.dart';
import 'package:eros_app/ui/views/term_view.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class SettingsView extends StatefulWidget {
  @override
  _SettingsViewState createState() => _SettingsViewState();
}

class _SettingsViewState extends State<SettingsView> {
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
            "Configuración",
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
                      padding: EdgeInsets.all(20),
                      width: MediaQuery.of(context).size.width,
                      decoration: new BoxDecoration(
                        color: Color(0xFF2F3444),
                        shape: BoxShape.rectangle,
                        borderRadius: BorderRadius.circular(10),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black26,
                            blurRadius: 10.0,
                            offset: const Offset(0.0, 5.0),
                          ),
                        ],
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: <Widget>[
                          Text(
                            "COMPRA PLAN PREMIUM",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                fontSize: 35,
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                                fontFamily: "Roboto"),
                          ),
                          Container(
                            margin: EdgeInsets.only(top: 5),
                            child: Text(
                              "Y conoce quién te envío flechazo y más ...",
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                  fontSize: 18,
                                  color: Colors.white,
                                  fontWeight: FontWeight.w200,
                                  fontFamily: "Roboto"),
                            ),
                          ),
                        ],
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => AccountView(),
                          ),
                        );
                      },
                      child: Container(
                        height: 60,
                        margin: EdgeInsets.only(top: 50),
                        decoration: BoxDecoration(
                          border: Border(
                            bottom: BorderSide(
                              width: 1.0,
                              color: Color(
                                0xFFC4C4C4,
                              ),
                            ),
                          ),
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget>[
                            Container(
                              width: MediaQuery.of(context).size.width*0.8,
                              child: Text(
                                "Información de la cuenta",
                                overflow: TextOverflow.clip,
                                style: TextStyle(
                                    fontSize: 20, fontWeight: FontWeight.w300),
                              )
                            ),
                            Icon(
                              Icons.arrow_forward_ios,
                              size: 20.0,
                            ),
                          ],
                        ),
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        // Navigator.push(
                        //   context,
                        //   MaterialPageRoute(
                        //     builder: (context) => AccountView(),
                        //   ),
                        // );
                      },
                      child: Container(
                        height: 60,
                        decoration: BoxDecoration(
                          border: Border(
                            bottom: BorderSide(
                              width: 1.0,
                              color: Color(
                                0xFFC4C4C4,
                              ),
                            ),
                          ),
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget>[
                            Container(
                              width: MediaQuery.of(context).size.width*0.8,
                              child: Text(
                                "Plan Premium",
                                overflow: TextOverflow.clip,
                                style: TextStyle(
                                    fontSize: 20, fontWeight: FontWeight.w300),
                              )
                            ),
                            // Icon(
                            //   Icons.arrow_forward_ios,
                            //   size: 20.0,
                            // ),
                          ],
                        ),
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => ContactView(),
                          ),
                        );
                      },
                      child: Container(
                        height: 60,
                        margin: EdgeInsets.only(left: MediaQuery.of(context).size.width*0.08),
                        decoration: BoxDecoration(
                          border: Border(
                            bottom: BorderSide(
                              width: 1.0,
                              color: Color(
                                0xFFC4C4C4,
                              ),
                            ),
                          ),
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget>[
                            Container(
                              width: MediaQuery.of(context).size.width*0.8,
                              child: Text(
                                "Visualizar flechazos recibidos",
                                overflow: TextOverflow.clip,
                                style: TextStyle(
                                    fontSize: 20, fontWeight: FontWeight.w300),
                              )
                            ),
                            // Icon(
                            //   Icons.arrow_forward_ios,
                            //   size: 20.0,
                            // ),
                          ],
                        ),
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => ContactView(),
                          ),
                        );
                      },
                      child: Container(
                        height: 60,
                        margin: EdgeInsets.only(left: MediaQuery.of(context).size.width*0.08),
                        decoration: BoxDecoration(
                          border: Border(
                            bottom: BorderSide(
                              width: 1.0,
                              color: Color(
                                0xFFC4C4C4,
                              ),
                            ),
                          ),
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget>[
                            Container(
                              width: MediaQuery.of(context).size.width*0.8,
                              child: Text(
                                "Aceptar flechazos",
                                overflow: TextOverflow.clip,
                                style: TextStyle(
                                    fontSize: 20, fontWeight: FontWeight.w300),
                              )
                            ),
                            // Icon(
                            //   Icons.arrow_forward_ios,
                            //   size: 20.0,
                            // ),
                          ],
                        ),
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        // Navigator.push(
                        //   context,
                        //   MaterialPageRoute(
                        //     builder: (context) => AccountView(),
                        //   ),
                        // );
                      },
                      child: Container(
                        height: 60,
                        margin: EdgeInsets.only(left: MediaQuery.of(context).size.width*0.08),
                        decoration: BoxDecoration(
                          border: Border(
                            bottom: BorderSide(
                              width: 1.0,
                              color: Color(
                                0xFFC4C4C4,
                              ),
                            ),
                          ),
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget>[
                            Container(
                              width: MediaQuery.of(context).size.width*0.8,
                              child: Text(
                                "Contactar por WhatsApp o Fb Messenger",
                                overflow: TextOverflow.clip,
                                style: TextStyle(
                                    fontSize: 20, fontWeight: FontWeight.w300),
                              )
                            ),
                            // Icon(
                            //   Icons.arrow_forward_ios,
                            //   size: 20.0,
                            // ),
                          ],
                        ),
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        // Navigator.push(
                        //   context,
                        //   MaterialPageRoute(
                        //     builder: (context) => AccountView(),
                        //   ),
                        // );
                      },
                      child: Container(
                        height: 60,
                        decoration: BoxDecoration(
                          border: Border(
                            bottom: BorderSide(
                              width: 1.0,
                              color: Color(
                                0xFFC4C4C4,
                              ),
                            ),
                          ),
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget>[
                            Container(
                              width: MediaQuery.of(context).size.width*0.8,
                              child: Text(
                                "Volver al plan gratis",
                                overflow: TextOverflow.clip,
                                style: TextStyle(
                                    fontSize: 20, fontWeight: FontWeight.w300),
                              )
                            ),
                            // Icon(
                            //   Icons.arrow_forward_ios,
                            //   size: 20.0,
                            // ),
                          ],
                        ),
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        const url = 'https://www.erospeople.com';
                        if (canLaunch(url) != null) {
                          launch(url);
                        } else {
                          throw 'Could not launch $url';
                        }
                      },
                      child: Container(
                        height: 60,
                        decoration: BoxDecoration(
                          border: Border(
                            bottom: BorderSide(
                              width: 1.0,
                              color: Color(
                                0xFFC4C4C4,
                              ),
                            ),
                          ),
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget>[
                            Container(
                              width: MediaQuery.of(context).size.width*0.8,
                              child: Text(
                                "Visita www.erospeople.com",
                                overflow: TextOverflow.clip,
                                style: TextStyle(
                                    fontSize: 20, fontWeight: FontWeight.w300),
                              )
                            ),
                            // Icon(
                            //   Icons.arrow_forward_ios,
                            //   size: 20.0,
                            // ),
                          ],
                        ),
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => TermView(),
                          ),
                        );
                      },
                      child: Container(
                        height: 60,
                        decoration: BoxDecoration(
                          border: Border(
                            bottom: BorderSide(
                              width: 1.0,
                              color: Color(
                                0xFFC4C4C4,
                              ),
                            ),
                          ),
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget>[
                            Container(
                              width: MediaQuery.of(context).size.width*0.8,
                              child: Text(
                                "Términos y condiciones",
                                overflow: TextOverflow.clip,
                                style: TextStyle(
                                    fontSize: 20, fontWeight: FontWeight.w300),
                              )
                            ),
                            // Icon(
                            //   Icons.arrow_forward_ios,
                            //   size: 20.0,
                            // ),
                          ],
                        ),
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        // Navigator.push(
                        //   context,
                        //   MaterialPageRoute(
                        //     builder: (context) => AccountView(),
                        //   ),
                        // );
                      },
                      child: Container(
                        height: 60,
                        decoration: BoxDecoration(
                          border: Border(
                            bottom: BorderSide(
                              width: 1.0,
                              color: Color(
                                0xFFC4C4C4,
                              ),
                            ),
                          ),
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget>[
                            Container(
                              width: MediaQuery.of(context).size.width*0.8,
                              child: Text(
                                 "Soporte",
                                overflow: TextOverflow.clip,
                                style: TextStyle(
                                    fontSize: 20, fontWeight: FontWeight.w300),
                              )
                            ),
                            Icon(
                              Icons.arrow_forward_ios,
                              size: 20.0,
                            ),
                          ],
                        ),
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        // Navigator.push(
                        //   context,
                        //   MaterialPageRoute(
                        //     builder: (context) => AccountView(),
                        //   ),
                        // );
                      },
                      child: Container(
                        height: 60,
                        decoration: BoxDecoration(
                          border: Border(
                            bottom: BorderSide(
                              width: 1.0,
                              color: Color(
                                0xFFC4C4C4,
                              ),
                            ),
                          ),
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget>[
                            Container(
                              width: MediaQuery.of(context).size.width*0.8,
                              child: Text(
                                "Restaurar compra",
                                overflow: TextOverflow.clip,
                                style: TextStyle(
                                    fontSize: 20, fontWeight: FontWeight.w300),
                              )
                            ),
                            // Icon(
                            //   Icons.arrow_forward_ios,
                            //   size: 20.0,
                            // ),
                          ],
                        ),
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => LoginView(),
                          ),
                        );
                      },
                      child: Container(
                        height: 60,
                        decoration: BoxDecoration(
                          border: Border(
                            bottom: BorderSide(
                              width: 1.0,
                              color: Color(
                                0xFFC4C4C4,
                              ),
                            ),
                          ),
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget>[
                            Container(
                              width: MediaQuery.of(context).size.width*0.8,
                              child: Text(
                                "Cerrar sesión",
                                overflow: TextOverflow.clip,
                                style: TextStyle(
                                    fontSize: 20, fontWeight: FontWeight.w300),
                              )
                            ),
                            // Icon(
                            //   Icons.arrow_forward_ios,
                            //   size: 20.0,
                            // ),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(height: MediaQuery.of(context).size.height*0.08,),
                    GestureDetector(
                      onTap: () {
                        // Navigator.push(
                        //   context,
                        //   MaterialPageRoute(
                        //     builder: (context) => AccountView(),
                        //   ),
                        // );
                      },
                      child: Container(
                        height: 60,
                        // decoration: BoxDecoration(
                        //   border: Border(
                        //     bottom: BorderSide(
                        //       width: 1.0,
                        //       color: Color(
                        //         0xFFC4C4C4,
                        //       ),
                        //     ),
                        //   ),
                        // ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget>[
                            Container(
                              width: MediaQuery.of(context).size.width*0.8,
                              child: Text(
                                "Borrar cuenta",
                                textAlign: TextAlign.center,
                                overflow: TextOverflow.clip,
                                style: TextStyle(
                                    fontSize: 20, fontWeight: FontWeight.w300),
                              )
                            ),
                            // Icon(
                            //   Icons.arrow_forward_ios,
                            //   size: 20.0,
                            // ),
                          ],
                        ),
                      ),
                    ),
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
