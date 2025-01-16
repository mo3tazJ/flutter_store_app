import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:store/helper/api.dart';

class AllCateroriesService {
  Future<List<dynamic>> getAllCategories() async {
    Future<List<dynamic>> data =
        await Api().get(url: "https://fakestoreapi.com/products/categories");
    return data;
  }
}
