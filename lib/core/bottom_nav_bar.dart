import 'package:fluentui_icons/fluentui_icons.dart';
import 'package:flutter/material.dart';
import 'package:ticket_app/screens/home_screen.dart';

class BottomNavBar extends StatefulWidget {
  const BottomNavBar({super.key});

  @override
  State<BottomNavBar> createState() => _BottomNavBarState();
}

class _BottomNavBarState extends State<BottomNavBar> {
  final appScreens = [
    const HomeScreen(),
    Center(child: const Text("Search")),
    Center(child: const Text("Ticket")),
    Center(child: const Text("Profile")),
  ];

  int _seletedIndex = 0;

  void _onItemTapped(int index) {
    setState(() {
      _seletedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: appScreens[_seletedIndex],
        bottomNavigationBar: BottomNavigationBar(
          currentIndex: _seletedIndex,
          onTap: _onItemTapped,
          selectedItemColor: Colors.blueGrey,
          unselectedItemColor: const Color(0xFF526400),
          showSelectedLabels: false,
          items: [
            BottomNavigationBarItem(
              icon: Icon(FluentSystemIcons.ic_fluent_home_regular),
              activeIcon: Icon(FluentSystemIcons.ic_fluent_home_filled),
              label: 'Home',
            ),
            BottomNavigationBarItem(
              icon: Icon(FluentSystemIcons.ic_fluent_search_regular),
              activeIcon: Icon(FluentSystemIcons.ic_fluent_search_filled),
              label: 'Search',
            ),
            BottomNavigationBarItem(
              icon: Icon(FluentSystemIcons.ic_fluent_ticket_regular),
              activeIcon: Icon(FluentSystemIcons.ic_fluent_ticket_filled),
              label: 'Ticket',
            ),
            BottomNavigationBarItem(
              icon: Icon(FluentSystemIcons.ic_fluent_person_add_regular),
              activeIcon: Icon(FluentSystemIcons.ic_fluent_person_add_filled),
              label: 'Profile',
            ),
          ],
        ),
      ),
    );
  }
}
