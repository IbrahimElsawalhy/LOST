import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:Lost/Screens/Dashboard/dashboard_home.dart';
import 'package:Lost/Screens/Dashboard/dashboard_profile.dart';
import 'package:Lost/Screens/Dashboard/dashboard_search.dart';
import 'package:Lost/Screens/Dashboard/dashboard_settings.dart';

class DashboardScreen extends StatefulWidget {
  const DashboardScreen({Key? key}) : super(key: key);

  @override
  _DashboardScreenState createState() => _DashboardScreenState();
}

class _DashboardScreenState extends State<DashboardScreen> {
  final controller = ScrollController();
  final items = const [
    Icon(Icons.home, size: 30, color: Colors.white),
    Icon(Icons.search, size: 30, color: Colors.white),
    Icon(Icons.settings, size: 30, color: Colors.white),
    Icon(Icons.person, size: 30, color: Colors.white),

  ];

  int index = 0;

  @override
  Widget build(BuildContext context) {
    return Container(
        color: Color.fromRGBO(158, 31, 100, 1),
        child: SafeArea(
            top: false,
            child: Scaffold(
              extendBody: true,
              bottomNavigationBar: CurvedNavigationBar(
                animationDuration: Duration(milliseconds: 500),
                color:Color.fromRGBO(158, 31, 100, 1),

                buttonBackgroundColor: Color.fromRGBO(158, 31, 100, 1),

                items: items,
                index: index,
                onTap: (selctedIndex) {
                  setState(() {
                    index = selctedIndex;
                  });
                },
                height: 60,
                backgroundColor: Colors.white
                // animationCurve: ,
              ),
              body: Container(
                  margin: EdgeInsets.only(bottom: 60),
                  child: getSelectedWidget(index: index)),
            )));
  }

  Widget getSelectedWidget({required int index}) {
    Widget widget;
    switch (index) {
      case 0:
        widget = DashboardHomePage();
        break;
      case 1:
        widget = DashboardSearchPage();
        break;
      case 2:
        widget = DashboardSettingsPage();
        break;
      default:
        widget = DashboardProfilePage();
        break;
    }
    return widget;
  }
}
