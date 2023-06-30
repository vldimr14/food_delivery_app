import 'package:flutter/material.dart';
import 'package:food_delivery_app/models/product.dart';
import 'package:food_delivery_app/widgets/product_view.dart';

class CatalogScreen extends StatelessWidget {
  const CatalogScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height,
      child: Column(
        children: [
          Expanded(
            child: ListView(
              scrollDirection: Axis.vertical,
              shrinkWrap: true,
              padding: const EdgeInsets.only(left: 10, top: 60, right: 10),
              children: [
                Text(
                  'Our dishes',
                  style: Theme.of(context)
                      .textTheme
                      .titleMedium
                      ?.copyWith(color: Colors.black),
                ),
                ProductView(
                  product: Product(
                      id: '1',
                      name: 'New York steak',
                      description:
                          'The strip steak is a cut of beef steaks from the short loin of a cow. It consists of a muscle that does little work, the longissimus, making the meat particularly tender, although not as tender as the nearby psoas major or tenderloin',
                      image: 'assets/images/steak.jpeg',
                      price: 120),
                ),
                ProductView(
                  product: Product(
                      id: '2',
                      name: 'Classic burger',
                      description:
                          'A hamburger, or simply burger, is a food consisting of fillings—usually a patty of ground meat, typically beef—placed inside a sliced bun or bread roll.',
                      image: 'assets/images/burger.jpeg',
                      price: 50),
                ),
                ProductView(
                  product: Product(
                      id: '3',
                      name: 'French fries',
                      description:
                          'French fries, chips, finger chips, french-fried potatoes, or simply fries, are batonnet or allumette-cut deep-fried potatoes of disputed origin from Belgium or France. They are prepared by cutting potatoes into even strips, drying them, and frying them, usually in a deep fryer.',
                      image: 'assets/images/fries.jpeg',
                      price: 10),
                ),
                ProductView(
                  product: Product(
                      id: '4',
                      name: 'Strawberry Shortcake',
                      description:
                          'biscuit-cake is split and stuffed with a pile of fresh strawberries and fluffy whipped cream for a tender, delightfully messy dessert. Cut it into wedges and serve up a strawberry shortcake that is modern not only in looks, but also in how easy it is on the cook.',
                      image: 'assets/images/strawberry_shortcake.jpeg',
                      price: 25),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
