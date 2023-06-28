import 'package:flutter/material.dart';
import 'package:food_delivery_app/widgets/product_view.dart';

class CatalogScreen extends StatefulWidget {
  const CatalogScreen({super.key});

  @override
  State<CatalogScreen> createState() => _CatalogScreenState();
}

class _CatalogScreenState extends State<CatalogScreen> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height,
      child: Expanded(
        child: ListView(
          scrollDirection: Axis.vertical,
          shrinkWrap: true,
          padding: const EdgeInsets.only(left: 10, top: 60),
          children: [
            Text(
              'Our dishes',
              style: Theme.of(context)
                  .textTheme
                  .titleMedium
                  ?.copyWith(color: Colors.black),
            ),
            ProductView(
                imagePath: 'assets/images/steak.jpeg', text: 'New York steak'),
            ProductView(imagePath: 'assets/images/fries.jpeg', text: 'Fries'),
            ProductView(
                imagePath: 'assets/images/burger.jpeg', text: 'Classic burger'),
            ProductView(
                imagePath: 'assets/images/dessert.jpeg', text: 'Dessert'),
          ],
        ),
      ),
    );
  }
}
