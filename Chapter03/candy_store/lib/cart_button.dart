import 'package:flutter/material.dart';

class CartButton extends StatelessWidget {
  final int count;

  const CartButton({
    Key? key,
    required this.count,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 56,
      height: 56,
      padding: const EdgeInsets.all(12),
      decoration: BoxDecoration(
        color: Colors.teal[200],
        borderRadius: const BorderRadius.all(
          Radius.circular(10),
        ),
      ),
      child: Stack(
        children: [
          const Center(
            child: Icon(
              Icons.shopping_cart_outlined,
              size: 32,
              color: Colors.black,
            ),
          ),
          Positioned(
            right: 0,
            child: Container(
              padding: const EdgeInsets.all(2),
              decoration: BoxDecoration(
                color: Colors.pink[500],
                borderRadius: const BorderRadius.all(Radius.circular(10)),
              ),
              constraints: const BoxConstraints(
                minWidth: 16,
                minHeight: 16,
              ),
              child: Text(
                '$count',
                style: const TextStyle(
                  color: Colors.white,
                  fontSize: 10,
                  decorationThickness: 0,
                ),
                textAlign: TextAlign.center,
              ),
            ),
          ),
        ],
      ),
    );
  }
}