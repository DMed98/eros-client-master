import 'package:eros_app/ui/views/contact_view.dart';
import 'package:eros_app/ui/views/notification_view.dart';
import 'package:eros_app/ui/views/profile_view.dart';
import 'package:eros_app/ui/views/search_view.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomeView extends StatefulWidget {
  static const routeName = '/home';

  @override
  _HomeViewState createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: CupertinoTabScaffold(
        backgroundColor: Colors.white,
        tabBar: CupertinoTabBar(
          items: <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: SizedBox(
                height: 26,
                child: Icon(Icons.search),
              ),
              activeIcon: SizedBox(
                height: 28,
                child: Icon(
                  Icons.search,
                  color: Color(0xFFE13131),
                ),
              ),
            ),
            BottomNavigationBarItem(
              icon: SizedBox(
                width: 26,
                child: Icon(Icons.notifications),
              ),
              activeIcon: SizedBox(
                  width: 28,
                  child: Icon(
                    Icons.notifications,
                    color: Color(0xFFE13131),
                  )),
            ),
            BottomNavigationBarItem(
              icon: SizedBox(
                width: 26,
                child: Icon(Icons.favorite_border),
              ),
              activeIcon: SizedBox(
                width: 28,
                child: Icon(
                  Icons.favorite,
                  color: Color(0xFFE13131),
                ),
              ),
            ),
            BottomNavigationBarItem(
              icon: SizedBox(
                width: 26,
                child: Icon(Icons.person),
              ),
              activeIcon: SizedBox(
                width: 28,
                child: Icon(
                  Icons.person,
                  color: Color(0xFFE13131),
                ),
              ),
            ),
          ],
        ),
        tabBuilder: (BuildContext context, int index) {
          switch (index) {
            case 0:
              return CupertinoTabView(
                builder: (BuildContext context) {
                  return SearchView();
                },
              );
              break;
            case 1:
              return CupertinoTabView(
                builder: (BuildContext context) {
                  return NotificationView();
                },
              );
              break;
            case 2:
              return CupertinoTabView(
                builder: (BuildContext context) {
                  return ContactView();
                },
              );
              break;
            case 3:
              return CupertinoTabView(
                builder: (BuildContext context) {
                  return ProfileView();
                },
              );
              break;
            default:
              return ProfileView();
          }
        },
      ),
    );
  }
}
