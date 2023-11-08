import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../models/catalog_model.dart';

import '../models/image_model.dart';
import '../models/price.dart';
import 'add_button.dart';

class ListItems extends StatelessWidget {
  const ListItems(this.index, {super.key});
  final int index;
  @override
  Widget build(BuildContext context) {
    var item = context.read<CatalogModel>().getById(index);
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.only(bottom: 20, right: 20, left: 20),
        child: Container(
          height: 70,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              boxShadow: const [
                BoxShadow(
                    color: Colors.grey, offset: Offset(-5, -5), blurRadius: 5),
                BoxShadow(color: Colors.white),
              ]),
          // child: ListView.builder(
          //     itemCount: CatalogImageModel().imageList.length,
          //     itemBuilder: (context, index) {
                child:Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    AspectRatio(
                      aspectRatio: 1,
                      child: Container(
                        // CatalogPriceModel().itemPrice[index],

                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          // color :item.color

                          image: DecorationImage(
                            image: AssetImage(
                              CatalogImageModel().imageList[index],

                            ), // Use the item's imageUrl as the background image
                            // fit: BoxFit.cover, // You can specify how the image should fit within the container
                          ),
                        ),

                      ),

                    ),

                    Text(
                      item.name,
                      style: TextStyle(fontSize: 20),
                    ),
                    AddButton(
                      item: item,
                    ),

      ],
      ),
                ),
                // itemCount: CatalogImageModel().imageList.length,
      ),
    );
    //   ),
    // );
  }
}
// CatalogPriceModel().itemPrice[index],
// itemPrice
// class ListItems extends StatelessWidget {
//   const ListItems(this.index, {super.key});
//   final int index;
//
//   @override
//   Widget build(BuildContext context) {
//     var item = context.read<CatalogModel>().getById(index);
//     return Padding(
//       padding: const EdgeInsets.only(bottom: 20,
//           right: 20, left: 20),
//       child: Container(
//         height: 70,
//         decoration: BoxDecoration(
//           borderRadius: BorderRadius.circular(30),
//           boxShadow: const [
//             BoxShadow(
//               color: Colors.teal,
//               offset: Offset(-5, -5),
//               blurRadius: 5,
//             ),
//             BoxShadow(color: Colors.teal),
//           ],
//
//           image: DecorationImage(
//             image: AssetImage(
//               CatalogImageModel().imageList[index],
//
//             ), // Use the item's imageUrl as the background image
//             // fit: BoxFit.cover, // You can specify how the image should fit within the container
//           ),
//         ),
//         child: ListView.builder(
//           itemBuilder: (context,index) {
//             return Row(
//               mainAxisAlignment: MainAxisAlignment.spaceBetween,
//               children: [
//                 AspectRatio(
//                   aspectRatio: 1.5, // Ensure this value is greater than 0.0
//                   child: Container(
//                     decoration: BoxDecoration(
//                       borderRadius: BorderRadius.circular(19),
//                       boxShadow: const [
//                         BoxShadow(
//                           color: Colors.purple,
//                           offset: Offset(-6, -5),
//                           blurRadius: 4,
//                         ),
//                         BoxShadow(color: Colors.grey),
//                       ],
//
//
//                     ),
//
//                   ), // Optionally, you can add an image placeholder here
//                 ),
//                 const SizedBox(width: 29,),
//                 Text(
//                   item.name,
//                   style: TextStyle(fontSize: 19),
//                 ),
//                 const SizedBox(width: 9,),
//
//                 AddButton(item: item),
//               ],
//             );
//           },itemCount: CatalogImageModel().imageList.length,
//         ),
//
//       ),
//     );
//   }
// }
