import 'item.dart';

// class CatalogModel {
//   List<int> itemPrice = [
//     50,
//     70,
//     50,
//     70,
//     50,
//     70,
//   ];
//
//   Item getById(int id) {
//     return Item(id, itemPrice[id % itemPrice.length] as String);
//   }
// }
import 'item.dart';

class CatalogPriceModel {
  List<double> itemPrice = [
    50,
    70,
    50,
    70,
    50,
    70,
  ];

  Item getById(int id) {
    return Item(id, itemPrice[id % itemPrice.length].toString()); // Convert the int to a string
  }
}





