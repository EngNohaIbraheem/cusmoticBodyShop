import 'package:bodyshop/views/VisaScreen.dart';
import 'package:bodyshop/views/cart.dart';
import 'package:bodyshop/views/cashScren.dart';
import 'package:bodyshop/views/home.dart';
import 'package:bodyshop/views/login.dart';
import 'package:bodyshop/views/payment.dart';
import 'package:bodyshop/views/register/register_screen.dart';
import 'package:bodyshop/views/splash_screen.dart';
import 'package:go_router/go_router.dart';

import 'contants.dart';



GoRouter router(){
  return GoRouter(
      initialLocation: splashView,
      routes: [
        GoRoute(path: splashView, builder: ((context, state) => const SplashView())),
        GoRoute(path: loginRoute, builder: ((context, state) => const Login())),
        GoRoute(path: register, builder: ((context, state) => const Registeration())),
        GoRoute(path: home, builder: ((context, state) => const Home())),
        GoRoute(path: cart, builder: ((context, state) => const Cart())),
        GoRoute(path: paymentMethod, builder: ((context, state) => const PaymentMethod())),
        GoRoute(path: visaScreen, builder: ((context, state) => VisaScreen())),
        GoRoute(path: cashScreen, builder: ((context, state) => const CashScreen())),

      ]
  );
}