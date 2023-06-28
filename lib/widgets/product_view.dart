import 'package:flutter/material.dart';
import 'package:food_delivery_app/widgets/product_description.dart';
import '../models/product.dart';

class ProductView extends StatelessWidget {
  final Product product;
  const ProductView({super.key, required this.product});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => {
        Navigator.of(context).push(
          MaterialPageRoute(
            builder: (context) => ProductDescription(product: product),
          ),
        )
      },
      child: Container(
        height: MediaQuery.of(context).size.height * 0.2,
        width: MediaQuery.of(context).size.width,
        padding: const EdgeInsets.all(5),
        margin: const EdgeInsets.all(5),
        decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage(product.image),
              fit: BoxFit.cover,
            ),
            borderRadius: BorderRadius.circular(15),
            boxShadow: [
              BoxShadow(
                color: Colors.grey.shade300,
                blurRadius: 5,
                spreadRadius: 3,
              )
            ]),
        child: Center(
          child: Text(
            product.name,
            style: Theme.of(context).textTheme.bodyMedium?.copyWith(
              shadows: const [
                Shadow(
                  color: Colors.black,
                  blurRadius: 10,
                  offset: Offset(1, 1),
                ),
              ],
            ),
            textAlign: TextAlign.center,
          ),
        ),
      ),
    );
  }
}
