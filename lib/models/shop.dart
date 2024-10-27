import 'package:simple_ecommerce_app/models/product.dart';

class Shop{
  // products for sale
  final List<Product> _shop = [
    Product(
      imagePath: 'lib/images/black boots.png',
      name: 'Black Boots',
      price: 50,
      description: 'Very comfortable women black boots',
    ),
  ];

  // user cart
  List<Product> _cart = [];
  
  // get product list
  List<Product> get shop => _shop;
  
  // get user cart
  List<Product> get cart => _cart;
  
  // add item to cart
  void additemToCart(Product item){
    _cart.add(item);
  }
  
  // remove item from cart
  void removeFromCart(Product item){
    _cart.remove(item);
  }
  
}