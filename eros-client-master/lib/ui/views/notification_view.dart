import 'package:eros_app/ui/widgets/arrow_shot.dart';
import 'package:flutter/material.dart';

class NotificationView extends StatefulWidget {
  @override
  _NotificationViewState createState() => _NotificationViewState();
}

class _NotificationViewState extends State<NotificationView> {
  static const int unidades = 8;
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
                        width: MediaQuery.of(context).size.width*0.3,
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.fromLTRB(MediaQuery.of(context).size.width*0.07, MediaQuery.of(context).size.height*0.05, MediaQuery.of(context).size.width*0.07, MediaQuery.of(context).size.height*0.07),
                      height: MediaQuery.of(context).size.width*0.345*unidades/2+MediaQuery.of(context).size.height*0.2,
                      child: GridView.count(
                        physics: new NeverScrollableScrollPhysics(),
                        crossAxisCount: 2,
                        children: List.generate(unidades, (index) {
                          return ArrowShot();
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
