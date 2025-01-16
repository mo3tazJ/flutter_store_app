import 'dart:convert';

import 'package:store/models/product_model.dart';
import 'package:http/http.dart' as http;

class CategoryService {
  Future<List<ProductModel>> getCategoryProducts(
      {required String category_name}) async {
    http.Response response = await http.get(
        Uri.parse('https://fakestoreapi.com/products/category/$category_name'));
    List<dynamic> data = jsonDecode(response.body);
    List<ProductModel> productsList = [];
    for (int i = 0; i < data.length; i++) {
      productsList.add(ProductModel.fromJson(data[i]));
    }
    return productsList;
  }
}
