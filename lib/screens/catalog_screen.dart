import 'package:flutter/material.dart';
import 'package:food_delivery_app/models/product.dart';
import 'package:food_delivery_app/widgets/product_view.dart';

class CatalogScreen extends StatelessWidget {
  const CatalogScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height,
      child: Expanded(
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
                  description: 'Description',
                  image: 'assets/images/steak.jpeg',
                  price: 120.0),
            ),
            ProductView(
              product: Product(
                  id: '1',
                  name: 'New York steak',
                  description: 'Description',
                  image: 'assets/images/steak.jpeg',
                  price: 120.0),
            ),
            ProductView(
              product: Product(
                  id: '1',
                  name: 'New York steak',
                  description: 'Description',
                  image: 'assets/images/steak.jpeg',
                  price: 120.0),
            ),
            ProductView(
              product: Product(
                  id: '1',
                  name: 'New York steak',
                  description: 'Description',
                  image: 'assets/images/steak.jpeg',
                  price: 120.0),
            ),
          ],
        ),
      ),
    );
  }
}
