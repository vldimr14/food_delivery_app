import 'package:flutter/material.dart';
import '../models/product.dart';
import 'package:gap/gap.dart';
import 'package:food_delivery_app/models/cart.dart';

class ProductDescription extends StatelessWidget {
  final Product product;
  const ProductDescription({super.key, required this.product});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        child: Column(
          children: [
            Expanded(
              child: ListView(
                children: [
                  Image(
                    image: AssetImage(product.image),
                    height: MediaQuery.of(context).size.height * 0.35,
                    width: MediaQuery.of(context).size.width,
                    fit: BoxFit.cover,
                  ),
                  Container(
                    padding: const EdgeInsets.all(15),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          product.name,
                          style: Theme.of(context).textTheme.titleMedium,
                        ),
                        const Gap(10),
                        Text(
                          product.description,
                          style: Theme.of(context)
                              .textTheme
                              .bodyMedium
                              ?.copyWith(color: Colors.grey.shade700),
                          textAlign: TextAlign.justify,
                        ),
                        const Gap(30),
                        Text(
                          'Price: ${product.price.toString()} zł',
                          style: Theme.of(context)
                              .textTheme
                              .titleSmall
                              ?.copyWith(
                                  color: Colors.black,
                                  fontSize: 28,
                                  shadows: List.empty()),
                        ),
                        const Gap(10),
                        SizedBox(
                          child: ElevatedButton(
                            onPressed: () {
                              Cart.addToCart(product);
                            },
                            style: ElevatedButton.styleFrom(
                                backgroundColor: Colors.yellow.shade700,
                                foregroundColor: Colors.white,
                                textStyle: const TextStyle(fontSize: 20),
                                padding: const EdgeInsets.symmetric(
                                    horizontal: 15, vertical: 10),
                                shape: const StadiumBorder()),
                            child: const Text('Add to cart'),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () => Navigator.pop(context),
        backgroundColor: Theme.of(context).primaryColor,
        foregroundColor: Colors.black,
        child: const Icon(Icons.arrow_back),
      ),
    );
  }
}
