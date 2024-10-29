import 'package:flutter/material.dart';
import 'package:hive/hive.dart';
import 'package:provider/provider.dart';
import 'package:simple_ecommerce_app/models/product.dart';

import '../models/shop.dart';

class ProductTile extends StatelessWidget {

  final Product product;

  const ProductTile({
    super.key,
    required this.product,
  });

  // add to cart button
  void addToCart(BuildContext context){
    // show dialogue box to verify user's request
    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        content: Text('Add this item to your cart?'),
        actions: [
          //yes button
          MaterialButton(
            child: Text('Yes'),
            onPressed: (){
              Navigator.pop(context);

              context.read<Shop>().addItemToCart(product);
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

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 350,
      margin: EdgeInsets.all(10),
      padding: EdgeInsets.all(15),
      decoration: BoxDecoration(
        color: Theme.of(context).colorScheme.secondary,
        borderRadius: BorderRadius.circular(15),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // product image
              AspectRatio(
                aspectRatio: 1, // makes it a square
                child: Container(
                  margin: EdgeInsets.all(8),
                  padding: EdgeInsets.all(8),
                  decoration: BoxDecoration(
                    color: Theme.of(context).colorScheme.primary,
                    borderRadius: BorderRadius.circular(12),
                  ),
                  width: double.infinity, // fills out entire available space
                  child: Image.asset(product.imagePath),
                ),
              ),
              SizedBox(height: 20,),

              // product name
              Text(product.name, style: TextStyle(
                fontWeight: FontWeight.w800,
                color: Theme.of(context).scaffoldBackgroundColor,
                fontSize: 23,
              ),),
              SizedBox(height: 5,),

              // product description
              Text(product.description, style: TextStyle(
                fontWeight: FontWeight.w500,
                color: Theme.of(context).scaffoldBackgroundColor,
                fontSize: 18,
              ),),
            ],
          ),

          // product price + add to cart button
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text('\$' + product.price.toStringAsFixed(2),  style: TextStyle(
                fontWeight: FontWeight.w800,
                color: Theme.of(context).scaffoldBackgroundColor,
                fontSize: 15,
              ),),

              Container(
                padding: EdgeInsets.all(4),
                decoration: BoxDecoration(
                  color: Theme.of(context).colorScheme.primary,
                  borderRadius: BorderRadius.circular(12),
                ),
                child: IconButton(
                  onPressed: () => addToCart(context),
                  icon: Icon(Icons.add),
                ),
              ),
            ],
          ),

        ],
      ),
    );
  }
}
