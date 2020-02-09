import 'package:eros_app/ui/widgets/custom_button_dark.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CustomDialog extends StatelessWidget {
  final String type;
  final String description;
  final String value;
  final bool extend;
  final List items;

  const CustomDialog(
      {Key key,
      this.type,
      this.description,
      this.items,
      this.extend,
      this.value})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        showDialog(
          context: context,
          builder: (BuildContext context) => ErosDialog(
            type: type,
            description: description,
            items: items,
            extend: extend,
            value: value,
          ),
        );
      },
      child: Container(
        height: !extend ? 60.0 : 100,
        padding: EdgeInsets.only(left: 20, right: 20),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(30.0)),
          border: Border.all(
            color: Color(0xFF293143),
            width: 1,
          ),
        ),
        child: !extend
            ? Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Text(
                    type,
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Color(0xFF2F3444),
                    ),
                  ),
                  SizedBox(
                    width: MediaQuery.of(context).size.width - 190,
                    child: Align(
                      alignment: Alignment.centerRight,
                      child: Text(
                        description,
                        textAlign: TextAlign.end,
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.w300,
                          color: Color(0xFF777777),
                        ),
                      ),
                    ),
                  ),
                  Icon(
                    Icons.arrow_forward_ios,
                    size: 20.0,
                  ),
                ],
              )
            : Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Container(
                    padding: EdgeInsets.only(top: 10),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Text(
                          type,
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            color: Color(0xFF2F3444),
                          ),
                        ),
                        Icon(
                          Icons.arrow_forward_ios,
                          size: 20.0,
                        ),
                      ],
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.only(top: 10),
                    child: Text(
                      description,
                      textAlign: TextAlign.left,
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w300,
                        color: Color(0xFF777777),
                      ),
                    ),
                  ),
                ],
              ),
      ),
    );
  }
}

class ErosDialog extends StatelessWidget {
  final String type;
  final String description;
  final List items;
  final bool extend;
  final String value;

  const ErosDialog(
      {Key key,
      this.type,
      this.description,
      this.items,
      this.extend,
      this.value})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Material(
      type: MaterialType.transparency,
      child: Stack(
        children: <Widget>[
          Container(
            padding: EdgeInsets.only(
              top: Consts.avatarRadius + Consts.padding,
              bottom: Consts.padding,
              left: Consts.padding,
              right: Consts.padding,
            ),
            margin: !extend
                      ?
                      EdgeInsets.fromLTRB(MediaQuery.of(context).size.width*0.05, MediaQuery.of(context).size.height*0.25, MediaQuery.of(context).size.width*0.05, MediaQuery.of(context).size.height*0.03)
                      :
                      EdgeInsets.fromLTRB(MediaQuery.of(context).size.width*0.05, MediaQuery.of(context).size.height*0.15, MediaQuery.of(context).size.width*0.05, MediaQuery.of(context).size.height*0.03),

            decoration: new BoxDecoration(
              color: Colors.white,
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
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                Text(
                  type,
                  style: TextStyle(
                    fontSize: 24.0,
                    fontWeight: FontWeight.w700,
                  ),
                ),
                SizedBox(height: MediaQuery.of(context).size.height*0.02),
                Container(
                  height: !extend ?  MediaQuery.of(context).size.height*0.18 :  MediaQuery.of(context).size.height*0.35,
                  child: !extend
                      ? CupertinoPicker.builder(
                          magnification: 1.0,
                          backgroundColor: Colors.white,
                          itemExtent: 45,
                          onSelectedItemChanged: (int index) {
                            print(index);
                          },
                          childCount: items.length,
                          itemBuilder: (BuildContext context, int index) {
                            return new Text(items[index]);
                          },
                        )
                      : Container(
                          padding: EdgeInsets.all(10),
                          height: 500,
                          child: TextField(
                            style: TextStyle(fontSize: 18),
                            decoration: InputDecoration(
                              hintText: description,
                              enabledBorder: OutlineInputBorder(
                                borderSide:
                                    BorderSide(color: Color(0xFFBDbDbD)),
                              ),
                              focusedBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                    color: Color(0xFFBDbDbD), width: 1),
                              ),
                              border: new OutlineInputBorder(
                                borderSide: new BorderSide(
                                  color: Colors.white,
                                  style: BorderStyle.solid,
                                  width: 1,
                                ),
                              ),
                            ),
                            maxLength: 500,
                            minLines: 8,
                            keyboardType: TextInputType.multiline,
                            maxLines: null,
                          ),
                        ),
                ),
                SizedBox(height: MediaQuery.of(context).size.height*0.03),
                Align(
                  alignment: Alignment.center,
                  child: Container(
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
          ),
        ],
      ),
    );
  }
}

class Consts {
  Consts._();

  static const double padding = 16.0;
  static const double avatarRadius = 66.0;
}
