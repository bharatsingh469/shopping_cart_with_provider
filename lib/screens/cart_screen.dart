import 'package:cart_app_with_provider/constant.dart';
import 'package:cart_app_with_provider/provider/cart_provider.dart';
import 'package:cart_app_with_provider/widget.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';


class CartScreen extends StatelessWidget {
  const CartScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text(
            "Cart",
            style: TextStyle(color: Colors.white),
          ),
          centerTitle: true,
          backgroundColor: primaryColor,
        ),
        body: Consumer<CartProvider>(
          builder: (context, provider, child) => Column(
            children: [
              Expanded(
                child: ListView.builder(
                  itemCount: provider.cartItems.length,
                  itemBuilder: (context, index) => ItemWidget(
                    isCartItem: true,
                    item: provider.cartItems[index],
                  ),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              ElevatedButton(
                  style:
                      ElevatedButton.styleFrom(backgroundColor: primaryColor),
                  onPressed: () {
                    provider.reset();
                  },
                  child: Text(
                    "Buy ${provider.price} \$",
                    style: TextStyle(color: Colors.white),
                  )),
              const SizedBox(
                height: 20,
              )
            ],
          ),
        ));
  }
}
