import 'package:flutter/material.dart';

class Item {
  final String name;
  final Color color;
  final int id;
  final int price = 50;
  // final String image;
  // final int price ;
  // double price;

  Item(
    this.id,
    this.name,
  // this.price,
      // this.price,
      // this.image,
  ) : color = Colors.primaries[id % Colors.primaries.length];
      // : MaterialColor image = Colors.primaries[image % Colors.primaries.length];

  @override
  int get hashCode => id;

  @override
  bool operator ==(Object object) => object is Item && object.id == id;
}
// import 'package:flutter/material.dart';
//
// class Item {
//   final String name;
//   final Color color;
//   final int id;
//   int price;
//
//   Item(
//       this.id,
//       this.name,
//       this.price,
//       ) : color = Colors.primaries[id % Colors.primaries.length];
//
//   @override
//   int get hashCode => id;
//
//   @override
//   bool operator ==(Object object) => object is Item && object.id == id;
//
//   // Method to change the price
//   void setPrice(int newPrice) {
//     price = newPrice;
//   }
// }
