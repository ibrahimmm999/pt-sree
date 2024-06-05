import 'package:flutter/cupertino.dart';
import 'package:sree/models/product_model.dart';
import 'package:sree/services/product_service.dart';

class ProductProvider extends ChangeNotifier {
  List<ProductModel> _products = [];

  String _errorMessage = '';
  ProductModel? _currProduct;

  List<ProductModel> get products => _products;

  String get errorMessage => _errorMessage;
  ProductModel? get currProduct => _currProduct;

  Future<void> getProducts() async {
    try {
      List<ProductModel> products = await ProductService().getProduct();
      _products = products;
    } catch (e) {
      rethrow;
    }
  }
}
