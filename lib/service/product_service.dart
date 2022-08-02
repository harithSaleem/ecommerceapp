import 'package:http/http.dart' as http;
import 'package:madetruky/model/productmodel.dart';
import 'package:madetruky/utlis/myString.dart';

class ProductService {
  static Future<List<ProducteModels>> getProduct() async {
    http.Response res = await http.get(
      Uri.parse('$baseUrl/products'),
    );
    if (res.statusCode == 200) {
      String jasonData = res.body;
      return producteModelsFromJson(jasonData);
    } else {
      return throw Exception('Failed to load product');
    }
  }
}
