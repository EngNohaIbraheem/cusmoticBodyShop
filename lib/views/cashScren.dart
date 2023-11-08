import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../contants.dart';

class CashScreen extends StatelessWidget {
  const CashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(icon: const Icon(Icons.arrow_back, color: Colors.black,), onPressed: (){
          context.pushReplacement(home);
        },
        ),
        title: const Text("Cart", style: TextStyle(color: Colors.black, fontSize: 40,
            fontWeight:FontWeight.bold),),
        backgroundColor: primaryColor,
      ),
      body: Center(
          child: Text("Go TO SuperMarket and pay with ref code $REF_CODE")),
    );
  }
}
