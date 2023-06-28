import 'package:flutter/material.dart';
import '../models/product.dart';

class ProductDescription extends StatelessWidget {
  final Product product;
  const ProductDescription({super.key, required this.product});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Center(
          child: ElevatedButton(
            child: Text('Text'),
            onPressed: () {
              Navigator.pop(context);
            },
          ),
        ),
      ),
    );
  }
}
