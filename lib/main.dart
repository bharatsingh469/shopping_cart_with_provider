import 'package:cart_app_with_provider/provider/cart_provider.dart';
import 'package:cart_app_with_provider/screens/Catalog_screen.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
       create: (context) => CartProvider(),
       child:  MaterialApp(
      debugShowCheckedModeBanner: false,
      home: CatalogScreen(),
    ),
    );
  }
}

