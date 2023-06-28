import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:food_delivery_app/widgets/promotion_card.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _selectedIndex = 0;

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          // Greeting part
          Container(
            width: (MediaQuery.of(context).size.width),
            height: MediaQuery.of(context).size.height * 0.25,
            decoration: const BoxDecoration(
                image: DecorationImage(
                    image: AssetImage('assets/images/home_page.jpeg'),
                    fit: BoxFit.cover),
                boxShadow: [
                  BoxShadow(color: Colors.black, blurRadius: 5, spreadRadius: 1)
                ]),
            child: BackdropFilter(
              filter: ImageFilter.blur(sigmaX: 1, sigmaY: 0),
              child: Container(
                padding: const EdgeInsets.only(left: 10, bottom: 5),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Welcome to the',
                      style: Theme.of(context).textTheme.titleSmall,
                    ),
                    Text(
                      'SteakHouse',
                      style: Theme.of(context).textTheme.titleLarge,
                    ),
                  ],
                ),
              ),
            ),
          ),
          // Promotions
          Expanded(
            child: ListView(
              padding: const EdgeInsets.all(15),
              scrollDirection: Axis.vertical,
              shrinkWrap: true,
              children: [
                Text(
                  'Promotions',
                  style: Theme.of(context)
                      .textTheme
                      .titleMedium
                      ?.copyWith(fontSize: 32),
                ),
                Wrap(
                  children: const [
                    PromotionCard(
                      imagePath: 'assets/images/steak.jpeg',
                      text: '20% discount on steaks on 4 of July!',
                    ),
                    PromotionCard(
                      imagePath: 'assets/images/cocktails.jpeg',
                      text: 'Check out new bar menu!',
                    ),
                    PromotionCard(
                      imagePath: 'assets/images/coffee.jpeg',
                      text: '30% discount on coffee from 8 to 10AM',
                    ),
                    PromotionCard(
                      imagePath: 'assets/images/kitchen.jpeg',
                      text: 'Inside our kitchen',
                    ),
                    PromotionCard(
                      imagePath: 'assets/images/kitchen1.jpeg',
                      text: 'Menu changes (July)',
                    ),
                    PromotionCard(
                      imagePath: 'assets/images/gift_card.jpeg',
                      text: 'Buy a gift card for the one you care about',
                    ),
                  ],
                )
              ],
            ),
          ),
        ],
      ),
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
              label: 'Categories',
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
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.black,
        onTap: _onItemTapped,
      ),
    );
  }
}
