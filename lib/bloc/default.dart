import 'package:DROHealthPharmacy/model/product.dart';
import 'package:flutter/material.dart';


class MainBloc with
    ChangeNotifier{

  String _bearerToken;
  List<Product> _products;

  String get bearerToken {
    return _bearerToken;
  }
  set products (List<Product> _data) {
    this._products = _data;

    notifyListeners();
  }
  List<Product> get products {
    return _products;
  }
}