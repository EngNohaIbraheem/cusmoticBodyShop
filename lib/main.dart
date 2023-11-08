import 'package:bodyshop/my_observer/my_observer.dart';
import 'package:bodyshop/remote/dio_helper.dart';
import 'package:bodyshop/router.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:provider/provider.dart';
import 'package:firebase_core/firebase_core.dart';
import 'firebase_options.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'models/cart_model.dart';
import 'models/catalog_model.dart';
import 'package:firebase_auth/firebase_auth.dart';
Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
/// Ideal time to initialize
  await FirebaseAuth.instance.useAuthEmulator('localhost', 9099);
///...

  /// We're using the manual installation on non-web platforms
  // since Google sign in plugin doesn't yet
  // support Dart initialization.
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        Provider(create: (context)=> CatalogModel()),
        ChangeNotifierProxyProvider<CatalogModel, CartModel>(
            create: (context) => CartModel(),
            update: (context, catalog, cart){
              if (cart == null ) throw ArgumentError.notNull("cart");
              cart.catalogModel= catalog;
              return cart;
            })
      ],
      child: MaterialApp.router(
        title: 'Flutter Demo',
        debugShowCheckedModeBanner: false,
        routerConfig: router(),

      ),
    );
  }
}
