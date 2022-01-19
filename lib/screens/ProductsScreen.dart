import 'package:carts/AppRouter.dart';
import 'package:carts/Data/models/Item.dart';
import 'package:carts/providers/ShoppingCartProvider.dart';
import 'package:carts/screens/items/List_Item.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'ShoppingCartScreen.dart';

class ProductsScreen extends StatelessWidget {

  List<Item> products = [
    Item(id: 1, title: 'product 1', description:'Lorem Ipsum is simply dummy text of the printing and typesetting industry. ', price: '20₺'),
    Item(id: 2, title: 'product 2', description:'Lorem Ipsum is simply dummy text of the printing and typesetting industry. ', price: '30₺'),
    Item(id: 3, title: 'product 3', description:'Lorem Ipsum is simply dummy text of the printing and typesetting industry. ', price: '50₺'),
    Item(id: 4, title: 'product 4', description:'Lorem Ipsum is simply dummy text of the printing and typesetting industry. ', price: '210₺'),
    Item(id: 5, title: 'product 5', description:'Lorem Ipsum is simply dummy text of the printing and typesetting industry. ', price: '200₺'),
    Item(id: 6, title: 'product 6', description:'Lorem Ipsum is simply dummy text of the printing and typesetting industry. ', price: '220₺'),
    Item(id: 7, title: 'product 7', description:'Lorem Ipsum is simply dummy text of the printing and typesetting industry. ', price: '60₺')
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Products Page'),
        actions: <Widget>[
          Row(
            children: <Widget>[
              Text('${Provider.of<ShoppingCartProvider>(context).cart.length}',style: const TextStyle(fontSize: 18)),
              IconButton(
                icon: const Icon(Icons.shopping_cart),
                onPressed: (){
                  Navigator.pushNamed(context, AppRouter.shopping_cart_screen);
                },
              ),
            ],
          )
        ],
      ),
      body: ListView.builder(
          itemCount: products.length,
          itemBuilder: (BuildContext context, int index) {
            return ListItem(item:products[index]);
          }
      ),
    );
  }
}