import 'package:carts/Data/models/Item.dart';
import 'package:flutter/material.dart';

class ShoppingCartProvider extends ChangeNotifier{

  List<Item> cart = [];

  addToCart(product)
  {
    cart.add(product);
    notifyListeners();
  }

  checkIfProductExistsInCart(productID)
  {
    if(cart.isNotEmpty)
    {
      var result = cart.where((product) => product.id == productID);
      if(result.isEmpty)
      {return false;}
      else
      {return true;}

    }else{
      return false;
    }
  }

  deleteProductFromCart(productID)
  {
    cart.removeWhere((product) => product.id == productID);
    notifyListeners();
  }
}