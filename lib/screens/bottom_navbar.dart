import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'mainpages/home.dart';
import 'mainpages/plan.dart';
import 'mainpages/profile.dart';

class NavBar extends StatefulWidget {
  const NavBar({super.key});

  @override
  State<NavBar> createState() => _NavBarState();
}

class _NavBarState extends State<NavBar> {
  int myindex = 0;
  List pages = [
    const Home(),
    const Plan(),
    const Profile(),
  ];
  int currentIndex = 0;
  void onTap(int index) {
    setState(() {
      currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBody: true,
      body: pages[currentIndex],
      bottomNavigationBar: Container(
        clipBehavior: Clip.hardEdge,
        decoration: const BoxDecoration(
          borderRadius: BorderRadius.only(
            topRight: Radius.circular(15),
            topLeft: Radius.circular(15),
          ),
        ),
        height: 70,
        child: BottomNavigationBar(
          backgroundColor: Colors.white,
          elevation: 25,
          currentIndex: currentIndex,
          onTap: onTap,
          selectedItemColor: const Color(0xff7a14ff),
          unselectedItemColor: Colors.grey,
          items: [
            BottomNavigationBarItem(
              label: "Home",
              icon: SvgPicture.asset(
                "lib/assets/svg/home.svg",
              ),
            ),
            BottomNavigationBarItem(
              label: "Plan",
              icon: SvgPicture.asset(
                "lib/assets/svg/plan.svg",
              ),
            ),
            BottomNavigationBarItem(
              label: "Profile",
              icon: SvgPicture.asset(
                "lib/assets/svg/profile.svg",
              ),
            ),
          ],
        ),
      ),
    );
  }
}
