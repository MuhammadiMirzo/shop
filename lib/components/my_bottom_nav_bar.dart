import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';

class MyBottomNavBar extends StatelessWidget {
  void Function(int)? onTabChange;
  MyBottomNavBar({super.key, required this.onTabChange});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(15),
      child: GNav(
        mainAxisAlignment: MainAxisAlignment.center,
        color: Colors.grey[400],
        activeColor: Colors.grey[700],
        tabBackgroundColor: Colors.grey.shade300,
        tabBorderRadius: 24,
        tabActiveBorder: Border.all(color: Colors.white),
        tabs: const [
          GButton(
            icon: Icons.home,
            text: "Shop",
            gap: 8,
          ),
          GButton(
            icon: Icons.shopping_bag_outlined,
            text: "Cart",
            gap: 8,
          ),
          GButton(
            icon: Icons.person,
            text: "Contact",
            gap: 8,
          ),
        ],
        onTabChange: onTabChange,
      ),
    );
  }
}
