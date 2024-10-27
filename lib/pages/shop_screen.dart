import 'package:flutter/material.dart';
import 'package:simple_ecommerce_app/components/drawer.dart';

class ShopScreen extends StatelessWidget {
  const ShopScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        foregroundColor: Theme.of(context).colorScheme.tertiary,
        title: Text(
          'Shop Page', style: TextStyle(
          fontSize: 30,
          fontWeight: FontWeight.w900,
        ),
        ),
      ),
      drawer: MyDrawer(),
    );
  }
}
