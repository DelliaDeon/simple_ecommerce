import 'package:flutter/cupertino.dart';
import 'package:simple_ecommerce_app/models/product.dart';

class Shop with ChangeNotifier{
  // products for sale
  final List<Product> _shop = [
    Product(
      imagePath: 'lib/images/black boots.png',
      name: 'Black Boots',
      price: 50,
      description: 'Very comfortable women black boots',
    ),

    Product(
      imagePath: 'lib/images/Cluster Rings.jpeg',
      name: 'Cluster Rings',
      price: 100,
      description: 'Cluster Rings Fashion Rose Gold 2Pcs Set Square Zircon Wedding Ring',
    ),

    Product(
      imagePath: 'lib/images/Bracelet Earrings Necklace.jpeg',
      name: 'Bracelet Earrings Necklace',
      price: 150,
      description: 'Bracelet Earrings Necklace Ethiopian Set Jewelry Ring Gold Color African Bridal Sets',
    ),

    Product(
      imagePath: 'lib/images/Cute Outfit Ideas.jpeg',
      name: 'Cute Shirt + Dress',
      price: 200,
      description: 'Cute outfit inspired by Beauty',
    ),

    Product(
      imagePath: 'lib/images/bags.jpeg',
      name: 'Fashion Backpacks',
      price: 62,
      description: 'Fashion bags Women Backpack Pu Leather Schoolbag',
    ),

    Product(
      imagePath: 'lib/images/locomotive down Jacket.jpeg',
      name: 'Locomotive Jacket',
      price: 59.5,
      description: 'Fashion locomotive down Jacket miot J33 classic',
    ),

    Product(
      imagePath: 'lib/images/High Heel Shoes.jpeg',
      name: 'High Heels',
      price: 179.5,
      description: 'Luxury Designer Sandals High Heel Shoes Comfortable Luxury Poker Star',
    ),

    Product(
      imagePath: 'lib/images/Stainless Steel Tableware.jpeg',
      name: 'Stainless Steel Tableware',
      price: 350,
      description: 'Stainless Steel Tableware Gift Box Set - 072silver',
    ),

    Product(
      imagePath: 'lib/images/Hoop Earrings.jpeg',
      name: 'Hoop Earrings',
      price: 57.8,
      description: 'Hoop Earrings Gold Silver color Small Big Circle Earring Set',
    ),

    Product(
      imagePath: 'lib/images/Gothic Dress.jpeg',
      name: 'Gothic Dress',
      price: 150,
      description: 'FRMUIC Renaissance Gothic Dress for Women Halloween Plus Size',
    ),
  ];

  // user cart
  List<Product> _cart = [];
  
  // get product list
  List<Product> get shop => _shop;
  
  // get user cart
  List<Product> get cart => _cart;
  
  // add item to cart
  void addItemToCart(Product item){
    _cart.add(item);
    notifyListeners();
  }
  
  // remove item from cart
  void removeFromCart(Product item){
    _cart.remove(item);
    notifyListeners();
  }
  
}