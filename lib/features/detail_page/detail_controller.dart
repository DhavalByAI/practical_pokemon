import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:practical_pokemon/core/model/pokemon_item.dart';

class DetailController extends GetxController{
 late DataBean data;
 late Color bgColor;


 @override
  void onInit() {
   var data =Get.arguments as (DataBean,Color);
   this.data=data.$1;
   bgColor=data.$2;
   super.onInit();
  }
}