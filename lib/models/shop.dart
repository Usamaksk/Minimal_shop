import 'package:flutter/material.dart';
import 'package:minimal_ecommorce_shop/models/product.dart';

class Shop extends ChangeNotifier{
  //product for sale
  final List<Product> _shop = [
    //Product 1
    Product(name: "Product 1",
        price:99.99,
        description: "Item description...more description....",
        imagePath: 'assets/',
        ),
    //Product 2
    Product(name: "Product 2",
      price:99.99,
      description: "Item description",
      imagePath: 'assets/',
    ),
    //Product 3
    Product(name: "Product 3",
      price:99.99,
      description: "Item description",
      imagePath: 'assets/',
    ),
    //Product 4
    Product(name: "Product 4",
      price:99.99,
      description: "Item description",
      imagePath: ''
    ),
  ];
  // User cart
  List<Product> _cart = [];


  //get product list
  List<Product> get shop => _shop;

  //get user cart
  List<Product> get cart => _cart;

  //add item from cart
  void addToCart(Product item) {
    _cart.add(item);
    notifyListeners();
  }

  //remove item from cart
  void removeFromCart(Product item) {
    _cart.remove(item);
    notifyListeners();
  }

}