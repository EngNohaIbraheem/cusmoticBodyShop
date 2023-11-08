import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../components/custom_text_field.dart';
import '../contants.dart';
import 'VisaScreen.dart';
import 'cashScren.dart';

class PaymentMethod extends StatelessWidget {
  const PaymentMethod({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            SizedBox(height: 20,),
            Container(
              width: 250,
              height: 120,
              decoration: ShapeDecoration(
                  color: Colors.white,
                  shape: RoundedRectangleBorder (
                      borderRadius: BorderRadius.circular(16.0),
                      side: BorderSide(
                          width: 10,
                          // color: Colors.blue
                      )
                  )
                    // + RoundedRectangleBorder (
                  //     borderRadius: BorderRadius.circular(22.0),
                  //     side: BorderSide(
                  //         width: 20,
                  //         // color: Colors.green
                  //     )
                  // )
              ),
              child: ElevatedButton(
                child: Center(
                    child: Text(
                        "visaScreen",
                        style: TextStyle(fontSize: 20)
                    )
                ),
                onPressed: (){
                  context.pushReplacement(visaScreen);

                },
              ),
            ),
            SizedBox(height: 20,),
            Container(
              width: 250,
              height: 120,
              decoration: ShapeDecoration(
                  color: Colors.white,
                  shape: RoundedRectangleBorder (
                      borderRadius: BorderRadius.circular(16.0),
                      side: BorderSide(
                        width: 10,
                        // color: Colors.blue
                      )
                  )
                // + RoundedRectangleBorder (
                //     borderRadius: BorderRadius.circular(22.0),
                //     side: BorderSide(
                //         width: 20,
                //         // color: Colors.green
                //     )
                // )
              ),
              child: ElevatedButton(
                child: Center(
                    child: Text(
                        "CashScreen",
                        style: TextStyle(fontSize: 20)
                    )
                ),
                onPressed: (){
                  context.pushReplacement(cashScreen);

                },
              ),
            ),

















            //       // ElevatedButton(onPressed: () {
    //       //      context.pushReplacement(visaScreen);
    //       //
    //       // },
    //       // child: const CustomTextFiald(
    //       //     text: "visaScreen")),
    //       // const SizedBox(
    //       //   height: 50,
    //       // ),
    //       // ElevatedButton(onPressed: () {
    //       //          context.pushReplacement(cashScreen);
    //       //
    //       // },
    //       //     child: const CustomTextFiald(
    //       //         text: "cashScreen")),
    //
    //       // SizedBox(
    //       //     width: double.infinity, // <-- match_parent
    //       //     height: double.infinity, // <-- match-parent
    //       //   child:ElevatedButton(
    //       //       onPressed: () {
    //       //         context.pushReplacement(visaScreen);
    //       //       },
    //       //       child: Text("Visa")),
    //       // ),
    //       ElevatedButton(
    //         style: ElevatedButton.styleFrom(
    //           primary: Colors.green,
    //           onPrimary: Colors.white,
    //           shadowColor: Colors.greenAccent,
    //           elevation: 3,
    //     shape: RoundedRectangleBorder(
    //         borderRadius: BorderRadius.circular(12),
    //   ),
    // ), onPressed: () {
    //                context.pushReplacement(visaScreen);
    //
    //       },
    //          child: Text("visaScreen")),

    ]
        ),
      )

    );
  }
}