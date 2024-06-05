// ignore_for_file: depend_on_referenced_packages

import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:sree/models/product_model.dart';
import 'package:sree/services/url_service.dart';

class ProductService {
  Future<List<ProductModel>> getProduct({String search = ''}) async {
    late Uri url;
    var headers = {
      'Content-Type': 'application/json',
    };
    if (search.isEmpty) {
      url = UrlService().productApi('dipentene');
    } else {
      url = UrlService().productApi(search);
    }
    var response = await http.get(
      url,
      headers: headers,
    );

    if (response.statusCode == 200) {
      var data = jsonDecode(response.body)['data'] as List;

      List<ProductModel> products = List<ProductModel>.from(
        data.map((e) => ProductModel.fromJson(e)),
      );

      return products;
    } else {
      throw "Get data products failed";
    }
  }
}
