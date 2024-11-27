import 'dart:developer';

import 'package:practical_pokemon/core/api/http_client.dart';
import 'package:practical_pokemon/core/api/network_routes.dart';
import 'package:practical_pokemon/core/model/pokemon_item.dart';

class ApiRepository {
  static final ApiRepository _instance = ApiRepository._();

  ApiRepository._();

  factory ApiRepository() => _instance;

  getCards(Map<String, dynamic> queryparam) async {
    var response = await HttpClient()
        .get(path: NetworkRoutes.cardUrl, queryParam: queryparam);

    if (response != null && response.isOk) {}
  }

  Future<PokemonItem?> getCardList(Map<String, dynamic> queryParam) async {
    var response = await HttpClient()
        .get(path: NetworkRoutes.cardUrl, queryParam: queryParam);
    if (response != null && response.isOk) {
      print(response.body);
      log(response.request?.url.toString() ?? '');
      if (response.body is Map) {
        return PokemonItem.fromJson(response.body);
      }
    }
    return null;
  }

  Future getCardDetails(Map<String, dynamic> queryParam) async {
    var response = await HttpClient()
        .get(path: NetworkRoutes.cardUrl, queryParam: queryParam);

    if (response != null && response.isOk) {
      if (response.body is List) {}
    }
    return [];
  }
}
