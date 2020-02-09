import 'package:eros_app/ui/widgets/search_member.dart';
import 'package:flutter/material.dart';

class SearchView extends StatefulWidget {
  @override
  _SearchViewState createState() => _SearchViewState();
}

class _SearchViewState extends State<SearchView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        minimum: EdgeInsets.only(top: 50.0),
        child: Container(
          child: CustomScrollView(
            slivers: <Widget>[
              SliverToBoxAdapter(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Container(
                      child: Image(
                        image: AssetImage('assets/images/eros_logo.png'),
                        width: 100.0,
                      ),
                    ),
                    SearchMember(gender: 'woman'),
                    Container(
                      margin: EdgeInsets.only(
                        bottom: 5.0,
                        top: 15.0,
                        left: 20.0,
                        right: 20.0,
                      ),
                      child: Align(
                        alignment: Alignment.centerLeft,
                        child: Text(
                          "BIO",
                          textAlign: TextAlign.left,
                          style: TextStyle(
                            color: Color(0xFF2F3444),
                            fontSize: 25.0,
                            fontFamily: "Roboto",
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(
                        bottom: 5.0,
                        top: 15.0,
                        left: 20.0,
                        right: 20.0,
                      ),
                      padding: EdgeInsets.all(20.0),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(30.0)),
                        border: Border.all(
                          color: Color(0xFF293143),
                          width: 1,
                        ),
                      ),
                      child: Text(
                        "Me considero una persona muy liberal y no temo a mis mostrar mis sentimientos.",
                        style: TextStyle(
                            fontSize: 19.0,
                            color: Color(0xFF777777),
                            fontFamily: "Roboto"),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(
                        bottom: 5.0,
                        top: 30.0,
                        left: 20.0,
                        right: 20.0,
                      ),
                      child: Align(
                        alignment: Alignment.centerLeft,
                        child: Text(
                          "BUSCO",
                          textAlign: TextAlign.left,
                          style: TextStyle(
                            color: Color(0xFF2F3444),
                            fontSize: 25.0,
                            fontFamily: "Roboto",
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(
                        bottom: 5.0,
                        top: 15.0,
                        left: 20.0,
                        right: 20.0,
                      ),
                      child: Row(
                        children: <Widget>[
                          Container(
                            margin: EdgeInsets.only(
                              right: 20.0,
                            ),
                            padding: EdgeInsets.fromLTRB(20.0, 5.0, 20.0, 5.0),
                            decoration: BoxDecoration(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(30.0)),
                              border: Border.all(
                                color: Color(0xFF293143),
                                width: 1,
                              ),
                            ),
                            child: Text(
                              "Hombres",
                              style: TextStyle(
                                  fontSize: 19.0,
                                  color: Color(0xFF777777),
                                  fontFamily: "Roboto"),
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.only(
                              right: 20.0,
                            ),
                            padding: EdgeInsets.fromLTRB(20.0, 5.0, 20.0, 5.0),
                            decoration: BoxDecoration(
                              borderRadius:
                              BorderRadius.all(Radius.circular(30.0)),
                              border: Border.all(
                                color: Color(0xFF293143),
                                width: 1,
                              ),
                            ),
                            child: Text(
                              "Mujeres",
                              style: TextStyle(
                                  fontSize: 19.0,
                                  color: Color(0xFF777777),
                                  fontFamily: "Roboto"),
                            ),
                          ),
                        ],
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
