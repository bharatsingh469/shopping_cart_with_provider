import 'package:cart_app_with_provider/item_list.dart';
import 'package:cart_app_with_provider/screens/cart_screen.dart';
import 'package:cart_app_with_provider/widget.dart';
import 'package:flutter/material.dart';
import '../constant.dart';

class CatalogScreen extends StatelessWidget {
  const CatalogScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Catolog", style: TextStyle(color: Colors.white),),
        backgroundColor: primaryColor,
        actions: [
          InkWell(
              onTap: () => Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => CartScreen()),
                  ),
              child: const Icon(Icons.shopping_cart, color: Colors.white,)),
          const SizedBox(
            width: 15,
          )
        ],
      ),
      body: ListView.builder(
        itemCount: catalog.length,
        itemBuilder: (context, index) => ItemWidget(
          isCartItem: false,
          item: catalog[index],),
        ),
    );
  }
}


