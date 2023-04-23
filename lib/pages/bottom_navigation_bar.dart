import 'package:bloodconnect/const/color.dart';
import 'package:bloodconnect/pages/home_page.dart';
import 'package:bloodconnect/provider/bottom_navigation_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class BottomNav extends StatelessWidget {
  static const List<Widget> _widgetOptions = <Widget>[
    HomePage(),
    HomePage(),
    HomePage(),
    HomePage()
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _widgetOptions.elementAt(
          Provider.of<BottomNavigationProvider>(context).selectedNavbar),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(icon: Icon(Icons.home), label: "test"),
          BottomNavigationBarItem(icon: Icon(Icons.assignment), label: "test"),
          BottomNavigationBarItem(icon: Icon(Icons.mail), label: "test"),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: "test"),
        ],
        currentIndex:
            Provider.of<BottomNavigationProvider>(context).selectedNavbar,
        selectedItemColor: PrimaryColor,
        unselectedItemColor: Colors.grey,
        showUnselectedLabels: true,
        onTap: (value) =>
            Provider.of<BottomNavigationProvider>(context, listen: false)
                .changeSelectedNavBar(value),
      ),
    );
  }
}
