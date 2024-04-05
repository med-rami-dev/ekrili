import 'package:ekrili/features/home/presentation/view/home_view.dart';
import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';

class MainRoutingView extends StatefulWidget {
  const MainRoutingView({super.key});

  @override
  State<MainRoutingView> createState() => _MainRoutingViewState();
}

class _MainRoutingViewState extends State<MainRoutingView> {
  int selectedIndex = 0;
  List<Widget> screens = <Widget>[
    const HomeView(),
    const Center(
      child: Text('Search'),
    ),
    const Center(
      child: Text('Process'),
    ),
    const Center(
      child: Text('Profile'),
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: 15,
          vertical: 5,
        ),
        child: GNav(
          gap: 8,
          activeColor: Colors.green,
          tabBackgroundColor: const Color.fromARGB(255, 235, 229, 229),
          padding: const EdgeInsets.all(15),
          duration: const Duration(milliseconds: 350),
          onTabChange: (index) {
            setState(() {
              selectedIndex = index;
            });
          },
          tabs: const [
            GButton(
              icon: Icons.home,
              text: 'Home',
            ),
            GButton(
              icon: Icons.search,
              text: 'Search',
            ),
            GButton(
              icon: Icons.refresh,
              text: 'Process',
            ),
            GButton(
              icon: Icons.person,
              text: 'Profile',
            ),
          ],
        ),
      ),
      body: screens[selectedIndex],
    );
  }
}
