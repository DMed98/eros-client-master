import 'package:flutter/material.dart';

class SearchMember extends StatefulWidget {
  final String gender;

  SearchMember({
    Key key,
    this.gender,
  }) : super(key: key);

  @override
  _SearchMemberState createState() => _SearchMemberState();
}

class _SearchMemberState extends State<SearchMember> {
  bool showMore = false;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.fromLTRB(20, 30, 20, 20),
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
                      ? AssetImage('assets/images/member_woman.jpg')
                      : AssetImage('assets/images/member_woman.jpg'),
                  width: MediaQuery.of(context).size.width,
                  height: 400,
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
            height: 140,
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
                  "Alejandra 29",
                  textAlign: TextAlign.left,
                  style: TextStyle(
                    fontSize: 35.0,
                    fontFamily: "Roboto",
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  "Mujer, Heterosexual",
                  textAlign: TextAlign.left,
                  style: TextStyle(
                    color: Color(0xFF777777),
                    fontSize: 18.0,
                    fontFamily: "Roboto",
                    fontWeight: FontWeight.w400,
                  ),
                ),
                Text(
                  "WhatsApp / Facebook Messenger",
                  textAlign: TextAlign.left,
                  style: TextStyle(
                    color: Color(0xFF777777),
                    fontSize: 18.0,
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
