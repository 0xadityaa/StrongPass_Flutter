import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import 'package:strong_pass/AccountsPage.dart';
import 'package:strong_pass/HomePage.dart';
import 'package:strong_pass/SplashScreen.dart';
import 'package:strong_pass/Stored_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Strong Pass",
      darkTheme: ThemeData(
        brightness: Brightness.dark,
      ),
      home: SplashScreen(),
    );
  }
}

class NavBar extends StatefulWidget {
  @override
  _NavBarState createState() => _NavBarState();
}

class _NavBarState extends State<NavBar> {
  int _selectedIndex = 0;

  List _selectedWidget = [HomePage(), StoredPswd(), AccountsPage()];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _selectedWidget.elementAt(_selectedIndex),
      bottomNavigationBar: CurvedNavigationBar(
        onTap: (value){
          setState(() {
            _selectedIndex = value;
          });
        },
        index: 0,
        height: 75.0,
        items: <Widget>[
          Icon(FontAwesomeIcons.key),
          Icon(FontAwesomeIcons.passport),
          Icon(FontAwesomeIcons.userAlt),
        ],
        color: Colors.black87,
        buttonBackgroundColor: Colors.cyan,
        backgroundColor: Colors.black12,
        animationCurve: Curves.easeInOut,
        animationDuration: Duration(milliseconds: 600),
        letIndexChange: (index) => true,
      ),
    );
  }
}
