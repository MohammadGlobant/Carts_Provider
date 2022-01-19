
import 'package:carts/Data/models/Item.dart';
import 'package:carts/providers/ShoppingCartProvider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class ListItem extends StatelessWidget {
  final Item item;
  const ListItem({Key? key, required this.item}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 25),
      child: ListTile(
        leading: Text(item.price),
        title: Text(item.title),
        subtitle: Text(item.description),
        trailing: (Provider.of<ShoppingCartProvider>(context).checkIfProductExistsInCart(item.id)) ?  GestureDetector(
          child: const Icon(Icons.delete),
          onTap: (){
            Provider.of<ShoppingCartProvider>(context,listen: false).deleteProductFromCart(item.id);
          },
        ) : GestureDetector(
          child: const Icon(Icons.shopping_cart),
          onTap: (){
            Provider.of<ShoppingCartProvider>(context,listen: false).addToCart(item);
          },
        ),
      ),
    );;
  }
}
