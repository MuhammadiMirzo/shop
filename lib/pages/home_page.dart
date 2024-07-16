import 'package:flutter/material.dart';
import 'package:magazin/components/my_bottom_nav_bar.dart';
import 'package:magazin/constants.dart';
import 'package:magazin/pages/cart_page.dart';
import 'package:magazin/pages/contact_page.dart';
import 'package:magazin/pages/shop_page.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _selectedIndex = 0;

  void navigateToAnotherPage(index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  final List<Widget> _page = [
    ShopPage(),
    CartPage(),
    ContactPage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColor,
      body: _page[_selectedIndex],
      bottomNavigationBar: MyBottomNavBar(
        onTabChange: (index) => navigateToAnotherPage(index),
      ),
    );
  }
}
