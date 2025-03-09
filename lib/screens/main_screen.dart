import 'package:flutter/material.dart';
import 'package:flutter_application_netflix/screens/home_screen.dart';
import 'package:flutter_application_netflix/screens/search_screen.dart';
import 'package:flutter_application_netflix/screens/download_screen.dart';

class MainScreen extends StatefulWidget {
  MainScreen({Key? key}) : super(key: key);

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  int _SelectedBottomNavigation = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBody: true,
      backgroundColor: Colors.transparent,
      bottomNavigationBar: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(15),
            topRight: Radius.circular(15),
          ),
        ),
        child: ClipRRect(
          borderRadius: BorderRadius.only(
              topLeft: Radius.circular(15), topRight: Radius.circular(15)),
          child: BottomNavigationBar(
            fixedColor: Color(0xffF35383),
            type: BottomNavigationBarType.fixed,
            backgroundColor: Color(0xff1C1F2E),
            currentIndex: _SelectedBottomNavigation,
            onTap: (int index) {
              setState(() {
                _SelectedBottomNavigation = index;
              });
            },
            items: [
              BottomNavigationBarItem(
                icon: Image.asset('images/icon_home.png'),
                activeIcon: Image.asset('images/icon_active_home.png'),
                label: 'Home',
              ),
              BottomNavigationBarItem(
                  activeIcon:
                      Image.asset('images/icon_search_navigation_active.png'),
                  icon: Image.asset('images/icon_search_navigation.png'),
                  label: 'Seach'),
              BottomNavigationBarItem(
                  icon: Icon(Icons.download), label: 'Download'),
            ],
          ),
        ),
      ),
      body: IndexedStack(
        index: _SelectedBottomNavigation,
        children: _getLayout(),
      ),
    );
  }

  List<Widget> _getLayout() {
    return <Widget>[
      HomeScreen(),
      Searcg_Screen(),
      WatchScreen(),
    ];
  }
}
