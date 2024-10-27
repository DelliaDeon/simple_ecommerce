import 'package:flutter/material.dart';
import 'package:simple_ecommerce_app/components/my_list_tile.dart';

class MyDrawer extends StatelessWidget {
  const MyDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: Theme.of(context).scaffoldBackgroundColor,
      child: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(25.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              // to push logout tile to the bottom
              Column(
                children: [
                  // logo
                  Icon(
                    Icons.shopping_bag,
                    color: Theme.of(context).colorScheme.tertiary,
                    size: 72,
                  ),

                  SizedBox(height: 70,),

                  // shop tile
                  MyListTile(
                      text: 'Shop',
                      icon: Icons.home,
                      onTap: (){
                        // pop drawer first
                        Navigator.pop(context);

                        // go to shop screen
                        Navigator.pushNamed(context, '/shop');
                      }
                  ),

                  // cart tile
                  MyListTile(
                      text: 'Cart',
                      icon: Icons.shopping_cart,
                      onTap: (){
                        Navigator.pop(context);
                        Navigator.pushNamed(context, '/cart');
                      }
                  ),
                ],
              ),


              // exit shop
              MyListTile(
                text: 'LogOut',
                icon: Icons.exit_to_app_outlined,
                onTap: (){
                  Navigator.pop(context);
                  Navigator.pushNamed(context, '/');
                }
              ),
            ],
          ),
        ),
      ),
    );
  }
}
