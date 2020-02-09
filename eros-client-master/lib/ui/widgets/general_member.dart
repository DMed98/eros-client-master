import 'package:flutter/material.dart';

class GeneralMember extends StatefulWidget {
  final String gender;

  GeneralMember({
    Key key,
    this.gender,
  }) : super(key: key);

  @override
  _GeneralMemberState createState() => _GeneralMemberState();
}

class _GeneralMemberState extends State<GeneralMember> {
  bool showMore = false;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.fromLTRB(MediaQuery.of(context).size.width*0.045, MediaQuery.of(context).size.height*0.045, MediaQuery.of(context).size.width*0.045, MediaQuery.of(context).size.height*0.022),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Stack(
            children: <Widget>[
              ClipRRect(
                borderRadius: new BorderRadius.only(
                  topLeft: Radius.circular(8.0),
                  topRight: Radius.circular(8.0),
                ),
                child: Image(
                  image: (this.widget.gender == 'woman')
                      ? AssetImage('assets/images/swipe_01.png')
                      : AssetImage('assets/images/swipe_02.png'),
                  width: MediaQuery.of(context).size.width,
                  height: MediaQuery.of(context).size.height*0.5,
                  fit: BoxFit.cover,
                ),
              ),
              Positioned(
                bottom: 5,
                right: 10,
                child: GestureDetector(
                  onTap: () {
                    setState(() {
                      this.showMore = !this.showMore;
                    });
                  },
                  child: ClipOval(
                    child: Container(
                      color: Color(0xFFF2F2F2),
                      height: 38.0, // height of the button
                      width: 38.0, // width of the button
                      child: Center(
                        child: Icon(
                          Icons.expand_more,
                          size: 38,
                          color: Color(0xFFE13131),
                        ),
                      ),
                    ),
                  ),
                ),
              )
            ],
          ),
          (this.showMore == true)
              ? Container(
                  padding: EdgeInsets.all(20),
                  height: MediaQuery.of(context).size.height*0.2,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(
                      bottomLeft: const Radius.circular(8.0),
                      bottomRight: const Radius.circular(8.0),
                    ),
                    color: Colors.white,
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey,
                        blurRadius: 15.0,
                        // has the effect of softening the shadow
                        spreadRadius: 0.0,
                        // has the effect of extending the shadow
                        offset: Offset(
                          0.0, // horizontal, move right 10
                          5.0, // vertical, move down 10
                        ),
                      )
                    ],
                  ),
                  width: MediaQuery.of(context).size.width,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Text(
                        "SAMANTHA 35",
                        textAlign: TextAlign.left,
                        style: TextStyle(
                          fontSize: MediaQuery.of(context).size.height*0.038,
                          fontFamily: "Roboto",
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text(
                        "Mujer, Heterosexual",
                        textAlign: TextAlign.left,
                        style: TextStyle(
                          color: Color(0xFF777777),
                          fontSize: MediaQuery.of(context).size.height*0.028,
                          fontFamily: "Roboto",
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                      Text(
                        "WhatsApp / Facebook Messenger",
                        textAlign: TextAlign.left,
                        style: TextStyle(
                          color: Color(0xFF777777),
                          fontSize: MediaQuery.of(context).size.height*0.028,
                          fontFamily: "Roboto",
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ],
                  ),
                )
              : Container()
        ],
      ),
    );
  }
}
