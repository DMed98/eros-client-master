import 'package:eros_app/ui/views/profile_edit_view.dart';
import 'package:eros_app/ui/views/settings_view.dart';
import 'package:eros_app/ui/widgets/general_member.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ProfileView extends StatefulWidget {
  static const routeName = '/profile';

  @override
  _ProfileViewState createState() => _ProfileViewState();
}

class _ProfileViewState extends State<ProfileView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(80.0),
        child: SafeArea(
          minimum: EdgeInsets.only(top: 30.0),
          child: AppBar(
            automaticallyImplyLeading: true,
            backgroundColor: Colors.transparent,
            elevation: 0,
            iconTheme: IconThemeData(color: Colors.black),
            leading: IconButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => SettingsView(),
                  ),
                );
              },
              icon: Icon(Icons.settings),
            ),
            title: Text(
              "18% completado",
              style: TextStyle(
                color: Color(0xFF262626),
                fontSize: 20.0,
                fontFamily: "Roboto",
              ),
            ),
            actions: <Widget>[
              Container(
                margin: EdgeInsets.only(right: 15.0),
                child: Center(
                  child: GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => ProfileEditView(),
                        ),
                      );
                    },
                    child: Text(
                      "Edit",
                      style: TextStyle(
                        color: Color(0xFFE13131),
                        fontSize: 18.0,
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
      body: Container(
        child: GeneralMember(gender: 'woman'),
      ),
    );
  }
}
