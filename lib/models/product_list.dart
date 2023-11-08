import 'package:flutter/cupertino.dart';

import 'cart_product.dart';
class Product {
  final String name;
  final double price;
  final String imageUrl;

  Product({required this.name, required this.price, required this.imageUrl});
}
class ProductList extends StatelessWidget {
  final List<Product> products = [
    Product(name: 'Product 1', price: 19.99, imageUrl: 'assets/images.img.png'),
    Product(name: 'Product 1', price: 19.99, imageUrl: 'assets/images.img.png'),
    Product(name: 'Product 1', price: 19.99, imageUrl: 'assets/images.img.png'),

    // Add more products here
  ];

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: products.length,
      itemBuilder: (ctx, index) {
        return ProductCard(product: products[index]);
      },
    );
  }
}
