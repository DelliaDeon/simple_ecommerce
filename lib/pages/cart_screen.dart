import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:simple_ecommerce_app/components/custom_button.dart';
import 'package:simple_ecommerce_app/models/product.dart';
import 'package:simple_ecommerce_app/models/shop.dart';

import '../components/drawer.dart';

class CartScreen extends StatefulWidget {
  const CartScreen({super.key});

  @override
  State<CartScreen> createState() => _CartScreenState();
}

class _CartScreenState extends State<CartScreen> {

  // add to cart button
  void removeFromCart(BuildContext context, Product product){
    // show dialogue box to verify user's request
    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        content: Text('Remove this item from your cart?'),
        actions: [
          //yes button
          MaterialButton(
              child: Text('Yes'),
              onPressed: (){
                Navigator.pop(context);

                context.read<Shop>().removeFromCart(product);
              }
          ),

          // cancel button
          MaterialButton(
              child: Text('Cancel'),
              onPressed: (){
                Navigator.pop(context);
              }
          ),
        ],
      ),
    );
  }

  void payForItem() {
    // show dialogue box to verify user's request
    showDialog(
      context: context,
      builder: (context) =>
          AlertDialog(
            content: Text('Connect this app to your payment method'),
          ),
    );
  }


  @override
  Widget build(BuildContext context) {
    // get access to the cart
    final cart = context.watch<Shop>().cart;

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

      body: Column(
        children: [
          // cart list
          Expanded(
            child: cart.isEmpty
            ? Center(child: Text('Your cart is Empty!'),)
            : ListView.builder(
                itemCount: cart.length,
                itemBuilder: (context, index){
                  // get individual item in cart
                  final item = cart[index];

                  // return as a cart tile UI
                  return Container(
                    margin: EdgeInsets.all(10),
                    padding: EdgeInsets.all(10),
                    decoration: BoxDecoration(
                      color: Theme.of(context).colorScheme.primary,
                      borderRadius: BorderRadius.circular(15),
                    ),
                    child: ListTile(
                      leading: Image.asset(item.imagePath),
                      title: Text(item.name, style: TextStyle(
                        color: Theme.of(context).colorScheme.tertiary,
                        fontWeight: FontWeight.w700,
                        fontSize: 18,
                      ),),
                      subtitle: Text(item.price.toStringAsFixed(2), style: TextStyle(
                        color: Theme.of(context).colorScheme.secondary,
                        fontSize: 15,
                      ),),
                      trailing: IconButton(
                        onPressed: () => removeFromCart(context, cart[index]),
                        icon: Icon(Icons.delete, color: Theme.of(context).colorScheme.secondary )
                      ),
                    ),
                  );

                }
              )
          ),

          // pay button
          Padding(
            padding: const EdgeInsets.all(50.0),
            child: CustomButton(
              child: Text('PAY', style: TextStyle(
                color: Theme.of(context).colorScheme.tertiary,
                fontWeight: FontWeight.bold,
                fontSize: 17,
              ),),
              onTap: payForItem,
            ),
          ),
        ],
      ),
    );
  }
}
