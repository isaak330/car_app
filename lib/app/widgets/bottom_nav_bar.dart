import 'package:car_app/app/pages/home/home_screen.dart';
import 'package:car_app/app/pages/user/user_screen.dart';
import 'package:car_app/app/widgets/home_screen/map_widget.dart';
import 'package:car_app/app/widgets/nav_icon.dart';
import 'package:car_app/const/colors.dart';
import 'package:flutter/material.dart';

class BottomNavBar extends StatefulWidget {
  const BottomNavBar({super.key});

  @override
  State<BottomNavBar> createState() => _BottomNavBar();
}

class _BottomNavBar extends State<BottomNavBar> {
  int _selectedIndex = 0;
  static final List<Widget> _pages = <Widget>[
    const HomeScreen(),
    const HomeScreen(),
    const HomeScreen(),
    const HomeScreen(),
    const UserScreen()
  ];

  @override
  Widget build(BuildContext context) {
    void onItemTapped(int index) {
      setState(() {
        _selectedIndex = index;
      });
    }

    return Scaffold(
        body: _pages.elementAt(_selectedIndex),
        bottomNavigationBar: Container(
          decoration: const BoxDecoration(
              border: Border(
                  top: BorderSide(
                      color: Color.fromRGBO(225, 227, 230, 1), width: 0.5))),
          child: BottomNavigationBar(
            unselectedItemColor: unselectedIcon,
            selectedItemColor: Colors.black,
            enableFeedback: false,
            type: BottomNavigationBarType.fixed,
            showUnselectedLabels: true,
            items: const <BottomNavigationBarItem>[
              BottomNavigationBarItem(
                  icon: NavigationIcon(
                    assetName: 'assets/bottom_nav_bar/car.png',
                    color: unselectedIcon,
                  ),
                  activeIcon: NavigationIcon(
                    assetName: 'assets/bottom_nav_bar/car.png',
                    color: Colors.black,
                  ),
                  label: ''),
              //----------------------------
              BottomNavigationBarItem(
                  icon: NavigationIcon(
                    assetName: 'assets/bottom_nav_bar/like.png',
                    color: unselectedIcon,
                  ),
                  activeIcon: NavigationIcon(
                    assetName: 'assets/bottom_nav_bar/like.png',
                    color: Colors.black,
                  ),
                  label: ''),
              //----------------------------
              BottomNavigationBarItem(
                  icon: NavigationIcon(
                    assetName: 'assets/bottom_nav_bar/plus.png',
                    color: unselectedIcon,
                  ),
                  activeIcon: NavigationIcon(
                    assetName: 'assets/bottom_nav_bar/plus.png',
                    color: Colors.black,
                  ),
                  label: ''),
              //----------------------------

              BottomNavigationBarItem(
                  icon: NavigationIcon(
                    assetName: 'assets/bottom_nav_bar/chat.png',
                    color: unselectedIcon,
                  ),
                  activeIcon: NavigationIcon(
                    assetName: 'assets/bottom_nav_bar/chat.png',
                    color: Colors.black,
                  ),
                  label: ''),
              //-------------------------------
              BottomNavigationBarItem(
                  icon: NavigationIcon(
                    assetName: 'assets/bottom_nav_bar/user.png',
                    color: unselectedIcon,
                  ),
                  activeIcon: NavigationIcon(
                    assetName: 'assets/bottom_nav_bar/user.png',
                    color: Colors.black,
                  ),
                  label: ''),
            ],
            currentIndex: _selectedIndex,
            onTap: onItemTapped,
          ),
        ));
  }
}
