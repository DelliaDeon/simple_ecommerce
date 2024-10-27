import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:simple_ecommerce_app/pages/cart_screen.dart';
import 'package:simple_ecommerce_app/pages/intro_screen.dart';
import 'package:simple_ecommerce_app/pages/shop_screen.dart';
import 'package:simple_ecommerce_app/theme/theme_provider.dart';

void main(){
  runApp(ChangeNotifierProvider(
    create: (context) => ThemeProvider(),
    child: SimpleEcommerce(),
  ));
}

class SimpleEcommerce extends StatelessWidget {
  const SimpleEcommerce({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: Provider.of<ThemeProvider>(context, listen: false).themeData,
      initialRoute: '/',

      routes: {
        '/': (context) => IntroScreen(),
        '/shop': (context) => ShopScreen(),
        '/cart': (context) => CartScreen(),

      },
    );
  }
}
