import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:practical_pokemon/features/detail_page/detail_binding.dart';
import 'package:practical_pokemon/features/detail_page/detail_page.dart';
import 'package:practical_pokemon/features/list_page/list_binding.dart';
import 'package:practical_pokemon/features/list_page/list_page.dart';

class AppRoutes {
  static const String list_page = '/';
  static const String detail_page = '/details';

  static Route<dynamic>? onGenerateRoute(RouteSettings setting) {
    var name = setting.name;

    switch (name) {
      case list_page:
        return GetPageRoute(
          settings: setting,
          binding: ListBinding(),
          page: () => const ListPage(),
        );
      case detail_page:
        return GetPageRoute(
          settings: setting,
          page: () => const DetailPage(),
          binding:DetailBinding()
        );
    }
    return GetPageRoute(
      settings: setting,
      page: () => const Scaffold(
        body: Center(
          child: Text("Error no Routes"),
        ),
      ),
    );
  }
}
