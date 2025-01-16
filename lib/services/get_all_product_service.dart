import 'dart:developer';

import 'package:store/helper/api.dart';
import 'package:store/models/product_model.dart';

class AllProductsService {
  final String baseUrl = "https://fakestoreapi.com";
  Future<List<ProductModel>> getAllProducts() async {
    List<dynamic> data =
        await Api().get(url: "https://fakestoreapi.com/products");
    // print(data);
    List<ProductModel> productsList = [];
    for (int i = 0; i < data.length; i++) {
      productsList.add(
        ProductModel.fromJson(data[i]),
      );
    }

    return productsList;
  }
}
