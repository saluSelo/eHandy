import 'package:firstapp/pages/cart.dart';
import 'package:firstapp/pages/category.dart';
import 'package:firstapp/pages/home.dart';
import 'package:firstapp/pages/profile.dart';
import 'package:firstapp/pages/settings.dart';
import 'package:flutter/material.dart';
import 'package:unicons/unicons.dart';

//it was stl, but converted to stf to make changes on the page, we want to go between pages (home,cart, etc...)

class tabsPage extends StatefulWidget {
  @override
  State<tabsPage> createState() => _tabsPageState();
}

class _tabsPageState extends State<tabsPage> {
  //creates a private variables that tells us at which page are we currently in
  int _current = 0;
  Color myColor = Color(0xFF4527A0);
  Color myTape = Color.fromARGB(255, 166, 209, 230);

//creates a list of widgets so that we can travel through them by using _current
  List<Widget> _pages = [
    homePage(),
    categoryPage(),
    cartPage(),
    settingsPage(),
    profilePage()
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //safearea is used to make the context of the page below the notch so it wont overlap it

      //body : display the context of the app

      //the child is now the currrent value of _pages list of widgets
      //we can go to any one we want now
      body: SafeArea(child: _pages[_current]),
      bottomNavigationBar: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          currentIndex: _current,
          iconSize: 25,

          //onTap is basicly ontapping on on of elemnts.. it takes a int parameter, its index in our case so we can change the page
          onTap: (int index) {
            //as we talked about in onBoarding page, it used to change the state of the screen, right now its used to change between pages
            setState(() {
              _current = index;
            });
          },
          selectedFontSize: 12,
          unselectedFontSize: 10,
          selectedItemColor: myColor,
          unselectedItemColor: myTape,
          items: [
            BottomNavigationBarItem(
                icon: Icon(UniconsLine.home), label: "home"),
            BottomNavigationBarItem(icon: Icon(Icons.list), label: 'Category'),
            BottomNavigationBarItem(
                icon: Icon(UniconsLine.newspaper), label: 'cart'),
            BottomNavigationBarItem(
                icon: Icon(
                  UniconsLine.cog,
                ),
                label: 'settings'),
            BottomNavigationBarItem(
                icon: Icon(UniconsLine.user), label: 'profile'),
          ]),
    );
  }
}
