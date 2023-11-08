import 'item.dart';

class CatalogImageModel {
  List<String> imageList = [
    "assets/big_sale.jpg" ,
    "assets/sgam_lotion.png",
    "assets/big_sale.jpg",
    "assets/sgam_lotion.png",
    "assets/big_sale.jpg",
    "assets/sgam_lotion.png",
    "assets/big_sale.jpg",
    "assets/sgam_lotion.png",
    "assets/big_sale.jpg",

  ];

  Item getById(int id) {
    return Item(id, imageList[id % imageList.length]);
  }
}