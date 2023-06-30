import 'package:flutter/material.dart';
import 'package:food_delivery_app/widgets/product_cart.dart';
import 'package:gap/gap.dart';
import 'package:food_delivery_app/models/cart.dart';

class CartScreen extends StatefulWidget {
  const CartScreen({super.key});

  @override
  State<CartScreen> createState() => _CartScreenState();
}

class _CartScreenState extends State<CartScreen> {
  int itemsCount = Cart.cartItems.length;

  void refreshCart() {
    setState(() {
      itemsCount = Cart.cartItems.length;
    });
  }

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
                  'Cart',
                  style: Theme.of(context)
                      .textTheme
                      .titleMedium
                      ?.copyWith(color: Colors.black),
                ),
                const Gap(10),
                Text(
                  'Your order',
                  style: Theme.of(context).textTheme.titleSmall?.copyWith(
                      color: Colors.grey.shade700, shadows: List.empty()),
                ),
                const Gap(10),
                Text(
                  'Items: ${Cart.cartItems.length}',
                  style: Theme.of(context).textTheme.titleSmall?.copyWith(
                      color: Colors.grey.shade700,
                      shadows: List.empty(),
                      fontSize: 24),
                ),
                ListView.builder(
                  physics: const ClampingScrollPhysics(),
                  padding: EdgeInsets.zero,
                  scrollDirection: Axis.vertical,
                  shrinkWrap: true,
                  itemCount: Cart.cartItems.length,
                  itemBuilder: (context, index) {
                    return Row(
                      children: [
                        ProductCartView(
                          product: Cart.cartItems[index],
                          productIndex: index,
                        ),
                        // Delete button
                        GestureDetector(
                          onTap: () {
                            setState(() {
                              Cart.removeFromCart(Cart.cartItems[index]);
                            });
                          },
                          child: SizedBox(
                            height: MediaQuery.of(context).size.height * 0.1,
                            width: MediaQuery.of(context).size.width * 0.2,
                            child: Icon(
                              Icons.delete_outline,
                              size: 36,
                              color: Colors.red.shade600,
                            ),
                          ),
                        )
                      ],
                    );
                  },
                ),
                const Gap(20),
                Text(
                  'Total price: ${Cart.getTotalPrice()} zł',
                  style: Theme.of(context).textTheme.titleSmall?.copyWith(
                      color: Colors.grey.shade800, shadows: List.empty()),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
