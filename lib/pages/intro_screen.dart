import 'package:flutter/material.dart';
import 'package:simple_ecommerce_app/components/custom_button.dart';

class IntroScreen extends StatelessWidget {
  const IntroScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).scaffoldBackgroundColor,
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(25.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              // logo
              Icon(
                Icons.shopping_bag,
                color: Theme.of(context).colorScheme.tertiary,
                size: 95,
              ),
              SizedBox(height: 15,),

              // title
              Text('E-Shop', style: TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.bold,
                color: Theme.of(context).colorScheme.tertiary,

              ),),
              SizedBox(height: 5,),

              // subtitle
              Text('Shop Premium Quality Products From Anywhere',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w400,
                  color: Theme.of(context).colorScheme.secondary,

                ),
              ),
              SizedBox(height: 20,),

              // button to move to homepage
              CustomButton(
                child: Icon(Icons.arrow_forward, color: Theme.of(context).colorScheme.tertiary,),
                onTap: (){
                  Navigator.pushNamed(context, '/shop');
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
