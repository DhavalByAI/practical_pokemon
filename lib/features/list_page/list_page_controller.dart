import 'dart:async';

import 'package:flutter/material.dart';
import 'package:get/get_rx/src/rx_types/rx_types.dart';
import 'package:get/get_state_manager/src/simple/get_controllers.dart';
import 'package:practical_pokemon/core/api/repository.dart';
import 'package:practical_pokemon/core/model/pokemon_item.dart';

class ListpageController extends GetxController {
  RxList<DataBean> pokeCards = RxList.empty();
  int page = 1;
  var searchController = TextEditingController();
  int limit = 10;
  RxBool loading = RxBool(false);
  RxBool loadMore = RxBool(false);
  Timer? _debounce;

  void onSearchChanged(String searchKey) {
    // Cancel the previous debounce
    if (_debounce?.isActive ?? false) _debounce?.cancel();

    // Start a new debounce after 500ms of inactivity
    _debounce = Timer(const Duration(milliseconds: 500), () {
      getList(searchKey: searchKey);
    });
  }

  getList({String? searchKey}) async {
    if (page == 1) {
      loading.value = true;
    } else {
      loadMore.value = true;
    }

    // Build query parameters
    Map<String, String> queryParams = {
      'page': page.toString(),
      'pageSize': limit.toString(),
    };

    if (searchKey != null && searchKey.isNotEmpty) {
      queryParams['q'] = 'name:$searchKey*'; // Wildcard search
    }

    var response = await ApiRepository().getCardList(queryParams);
    if (page == 1) {
      loading.value = false;
    } else {
      loadMore.value = false;
    }

    if (response == null || response.data.isEmpty) {
      if (page == 1) pokeCards.clear();
      return;
    }

    if (page == 1) {
      pokeCards.clear();
      pokeCards.addAll(response.data);
    } else {
      pokeCards.addAll(response.data);
    }
  }

  @override
  void onInit() {
    super.onInit();
    searchController.addListener(() {
      onSearchChanged(searchController.text);
    });
    getList();
  }

  @override
  void onClose() {
    super.onClose();
    searchController.dispose();
    _debounce?.cancel();
  }
}
