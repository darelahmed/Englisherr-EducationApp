import 'package:englisherr/HomePage.dart';
import 'package:englisherr/ChallengePage.dart';
import 'package:englisherr/ProfilePage.dart';
import 'package:flutter/material.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter_svg/flutter_svg.dart';

class BottomNavigation extends StatefulWidget {
  const BottomNavigation({Key? key}) : super(key: key);

  @override
  State<BottomNavigation> createState() => _BottomNavigationState();
}

class _BottomNavigationState extends State<BottomNavigation> {
  int _selectedIndex = 0;
  static const TextStyle optionStyle =
  TextStyle(fontSize: 30, fontWeight: FontWeight.bold);
  static const List<Widget> _widgetOptions = <Widget>[
    HomePage(),
    ChallengePage(),
    ProfilePage(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body : Container(
        color: Colors.grey.shade100,
        child: Center(
          child: _widgetOptions.elementAt(_selectedIndex),
        ),
      ),
      bottomNavigationBar: CurvedNavigationBar(
        color: Color(0xff3B4A4A),
        backgroundColor: Colors.white,
        items: <Widget>[
          SvgPicture.asset('icon/home-outline.svg',
          width: 30,
          height: 30,
          color: Colors.white),
          SvgPicture.asset('icon/award-outline.svg',
              width: 30,
              height: 30,
              color: Colors.white),
          SvgPicture.asset('icon/person-outline.svg',
              width: 30,
              height: 30,
              color: Colors.white),
        ],
        onTap: (index) {
          _onItemTapped(index);
        },
      ),
    );
  }
}
