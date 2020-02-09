import 'package:eros_app/ui/widgets/arrow_shot.dart';
import 'package:flutter/material.dart';

class ContactView extends StatefulWidget {
  @override
  _ContactViewState createState() => _ContactViewState();
}

class _ContactViewState extends State<ContactView> {
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
                    Container(
                      margin: EdgeInsets.fromLTRB(30.0, 30.0, 30.0, 30.0),
                      height: 600,
                      child: GridView.count(
                        physics: ScrollPhysics(),
                        crossAxisCount: 2,
                        children: List.generate(5, (index) {
                          return ArrowShot(lock:false);
                        }),
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