import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:store/config/config.dart';

class CategoriesService {
  Future<List<String>> getCategories() async {
    Uri uri = Uri.parse('${Config.API_URL}/products/categories');
    http.Response response = await http.get(uri);

    if (response.statusCode == 200) {
      List<dynamic> categoriesJson = json.decode(response.body);
      return categoriesJson.map((category) => category.toString()).toList();
    } else {
      throw Exception('Failed to load categories');
    }
  }

  Future<List<dynamic>> getProductsByCategory(String category) async {
    Uri uri = Uri.parse('${Config.API_URL}/products/category/$category');
    http.Response response = await http.get(uri);

    if (response.statusCode == 200) {
      return json.decode(response.body);
    } else {
      throw Exception('Failed to load products');
    }
  }

  getProducts() {}
}
