import 'dart:async';

import 'package:bodyshop/views/register/register_screen.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../contants.dart';
import 'login.dart';

class SplashView extends StatefulWidget {
  static const routeName = "initial";
  const SplashView({super.key});


  @override
  State<SplashView> createState() => _SplashViewState();
}

class _SplashViewState extends State<SplashView> {

  @override
  void initState() {
    Timer(const Duration(seconds: 10), () {
      context.pushReplacement(register);

      // Navigator.of(context).pushReplacementNamed(Registeration.routeName, );
    });
    super.initState();
  }
  @override
  Widget build(BuildContext context) {

    return Stack(
      children: [
        Container(
          color: Colors.white,
          // child: Image.asset(
          //   "assets/images/img.png",
          //   width: double.infinity,
          //   height: double.infinity,
          //   fit: BoxFit.cover,
          // ),
        ),
        Scaffold(
          backgroundColor: Colors.transparent,
          body: Center(
            child: Image.asset(
              "assets/big_sale.jpg",
              height: 400,

              width: 300,
            ),
          ),
        )
      ],
    );
  }
}