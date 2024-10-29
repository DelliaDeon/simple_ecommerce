import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:simple_ecommerce_app/models/shop.dart';
import 'package:simple_ecommerce_app/pages/cart_screen.dart';
import 'package:simple_ecommerce_app/pages/intro_screen.dart';
import 'package:simple_ecommerce_app/pages/shop_screen.dart';
import 'package:simple_ecommerce_app/theme/theme_provider.dart';

void main(){
  runApp(MultiProvider(
    providers: [
      ChangeNotifierProvider(
        create: (context) => ThemeProvider(),
      ),

      ChangeNotifierProvider(
        create: (context) => Shop(),
      ),
    ],
    child: SimpleEcommerce(),
  ));
}

class SimpleEcommerce extends StatelessWidget {
  const SimpleEcommerce({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer<ThemeProvider>(
      builder: (context, ThemeProvider, child){
        return MaterialApp(
          debugShowCheckedModeBanner: false,
          theme: ThemeProvider.themeData,
          initialRoute: '/',

          routes: {
            '/': (context) => IntroScreen(),
            '/shop': (context) => ShopScreen(),
            '/cart': (context) => CartScreen(),

          },
        );
      },
    );
  }
}
