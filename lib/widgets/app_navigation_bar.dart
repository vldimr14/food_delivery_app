import 'package:flutter/material.dart';
import 'package:food_delivery_app/screens/catalog_screen.dart';
import 'package:food_delivery_app/screens/home_screen.dart';

class AppNavigationBar extends StatefulWidget {
  const AppNavigationBar({super.key});

  @override
  State<AppNavigationBar> createState() => _AppNavigationBarState();
}

class _AppNavigationBarState extends State<AppNavigationBar> {
  int _selectedIndex = 0;

  static final List<Widget> _widgets = <Widget>[
    const HomeScreen(),
    const CatalogScreen(),
    const HomeScreen(),
    const Text('Cart')
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _widgets[_selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        iconSize: 32,
        type: BottomNavigationBarType.fixed,
        items: [
          BottomNavigationBarItem(
              icon: const Icon(Icons.home_outlined),
              label: 'Home',
              backgroundColor: Theme.of(context).primaryColor),
          BottomNavigationBarItem(
              icon: const Icon(Icons.list_alt_outlined),
              label: 'Catalog',
              backgroundColor: Theme.of(context).primaryColor),
          BottomNavigationBarItem(
              icon: const Icon(Icons.search_outlined),
              label: 'Search',
              backgroundColor: Theme.of(context).primaryColor),
          BottomNavigationBarItem(
              icon: const Icon(Icons.shopping_cart_outlined),
              label: 'Cart',
              backgroundColor: Theme.of(context).primaryColor),
        ],
        elevation: 10,
        showSelectedLabels: false,
        showUnselectedLabels: false,
        currentIndex: _selectedIndex,
        unselectedItemColor: Colors.grey.shade600,
        selectedItemColor: Colors.black,
        onTap: _onItemTapped,
      ),
    );
  }
}
