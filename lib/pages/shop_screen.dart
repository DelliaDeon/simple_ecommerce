import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:simple_ecommerce_app/components/drawer.dart';
import 'package:simple_ecommerce_app/components/product_tile.dart';
import 'package:simple_ecommerce_app/main.dart';

import '../models/shop.dart';

class ShopScreen extends StatelessWidget {
  const ShopScreen({super.key});

  @override
  Widget build(BuildContext context) {
    // access products in shop
    final products = context.watch<Shop>().shop;

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
        actions: [
          IconButton(
            onPressed: (){
              Navigator.pushNamed(context, '/cart');
            },
            icon: Icon(Icons.shopping_cart),
          ),
        ],
      ),
      drawer: MyDrawer(),

      body: ListView(
        children: [
          const SizedBox(height: 25,),

          // shop subtitle
          Center(
            child: Text('Choose from a selected list of premium products',
              style: TextStyle(
                color: Theme.of(context).colorScheme.secondary,
              ),
            ),
          ),

          // product list
          SizedBox(
            height: 600,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              padding: EdgeInsets.all(15),
              itemCount: products.length,
              itemBuilder: (context, index){
                // get each individual product from shop
                final product = products[index];

                // return as a product tile UI
                return ProductTile(product: product);
              },
            ),
          ),
        ],
      ),
    );
  }
}
