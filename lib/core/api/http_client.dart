import 'package:get/get_connect.dart';
import 'package:practical_pokemon/core/api/network_routes.dart';

class HttpClient {
  static final HttpClient _instance = HttpClient._();

  HttpClient._();

  factory HttpClient() => _instance;

Future<Response?>  get({required String path, Map<String, dynamic>? queryParam}) async {
    try {
      var url =NetworkRoutes.base_url+path;
      Response response = await GetConnect().get(url, query: queryParam);
      return response;
    } on Exception catch (e) {
      print(e.runtimeType);
    }
    return null;
  }
}
