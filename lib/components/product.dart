class Product {
  final String name;
  final double price;
  final String imageUrl; // This is the imageUrl property.

  Product({
    required this.name,
    required this.price,
    required this.imageUrl,
  });

  Product myProduct = Product(
    name: 'Sample Product',
    price: 19.99,
    imageUrl:         "assets/online-shopping.png",
  );
}