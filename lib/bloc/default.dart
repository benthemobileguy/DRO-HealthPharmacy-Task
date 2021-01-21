import 'package:DROHealthPharmacy/model/product.dart';
import 'package:flutter/material.dart';


class MainBloc with
    ChangeNotifier{

  String _bearerToken;
  int _noOfShoppingItems;
  List<Product> _products;

  String get bearerToken {
    return _bearerToken;
  }
  int get noOfShoppingItems {
    return _noOfShoppingItems;
  }
  set products (List<Product> _data) {
    this._products = _data;

    notifyListeners();
  }

  set noOfShoppingItems(value) {
    _noOfShoppingItems = value;
  }
  List<Product> get products {
    return _products;
  }
}