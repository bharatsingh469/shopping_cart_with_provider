import 'package:cart_app_with_provider/item_model.dart';
import 'package:cart_app_with_provider/provider/cart_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'constant.dart';

class ItemWidget extends StatelessWidget {
  const ItemWidget({
    super.key, required this.item, required this.isCartItem,
  });
  final Item item;
  final bool isCartItem;

  @override
  Widget build(BuildContext context) {
     final provider = Provider.of<CartProvider>(context, listen: false);
    return ListTile(
      leading: Container(
        height: 50,
        width: 50,
        decoration: BoxDecoration(color: item.color),
      ),
      title: Text(item.name),
      subtitle: Text("${item.price} \$"),
      trailing: isCartItem ? null : ElevatedButton(
          style: ElevatedButton.styleFrom(backgroundColor: primaryColor),
          onPressed: () => provider.addItem(item),
          child: Text(
            "Add",
            style: TextStyle(color: Colors.white),
          )),
    );
  }
}
