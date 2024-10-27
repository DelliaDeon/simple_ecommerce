import 'package:flutter/material.dart';

import '../components/drawer.dart';

class CartScreen extends StatefulWidget {
  const CartScreen({super.key});

  @override
  State<CartScreen> createState() => _CartScreenState();
}

class _CartScreenState extends State<CartScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        foregroundColor: Theme.of(context).colorScheme.tertiary,
        title: Text(
          'Your Cart', style: TextStyle(
          fontSize: 30,
          fontWeight: FontWeight.w900,
          ),
        ),
      ),
      drawer: MyDrawer(),
    );
  }
}
