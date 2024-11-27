import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:get/get.dart';
import 'package:practical_pokemon/app_routes.dart';
import 'package:practical_pokemon/features/list_page/list_page_controller.dart';
import 'package:practical_pokemon/theme/clolor.dart';
import 'package:shimmer/shimmer.dart';

class ListPage extends GetView<ListpageController> {
  const ListPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // drawer: const Drawer(),
      appBar: AppBar(
        surfaceTintColor: Colors.transparent,
        backgroundColor: Colors.white,
        foregroundColor: ColorData.black,
        leadingWidth: 50,
        leading: Padding(
          padding: const EdgeInsets.only(left: 10),
          child: IconButton(
              onPressed: () {}, icon: const Icon(Icons.menu_rounded)),
        ),
        title: _buildSearchBar(),
      ),
      backgroundColor: Colors.white,
      body: NotificationListener<ScrollNotification>(
        onNotification: (notification) {
          if (notification.metrics.pixels - 100 <=
              notification.metrics.maxScrollExtent) {
            if (!controller.loading.value && !controller.loadMore.value) {
              controller.page += 1;
              controller.getList(
                searchKey: controller.searchController.text.isNotEmpty
                    ? controller.searchController.text
                    : null,
              );
            }
          }
          return true;
        },
        child: Obx(
          () {
            if (controller.loading.value) {
              return _buildLoadingGrid();
            } else if (controller.page == 1 && controller.pokeCards.isEmpty) {
              return const Center(
                child: Text(
                  'No cards found.',
                  style: TextStyle(
                    color: Color(0xffa4a4a4),
                    fontSize: 18,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              );
            } else {
              return _buildPokemonGrid();
            }
          },
        ),
      ),
    );
  }

  Widget _buildSearchBar() {
    return Container(
      decoration: BoxDecoration(
        color: ColorData.white,
        borderRadius: BorderRadius.circular(15),
      ),
      child: TextField(
        controller: controller.searchController,
        onTapOutside: (event) {
          FocusManager.instance.primaryFocus?.unfocus();
        },
        textInputAction: TextInputAction.search,
        maxLines: 1,
        textAlignVertical: TextAlignVertical.center,
        decoration: InputDecoration.collapsed(
                filled: true,
                fillColor: Colors.grey.shade100,
                hintText: 'Search Pokémon . . .',
                hintStyle: const TextStyle(color: Colors.black38, fontSize: 18))
            .copyWith(
          contentPadding: const EdgeInsets.symmetric(
            horizontal: 16,
            vertical: 10,
          ),
          suffixIcon: const Icon(Icons.search_outlined, size: 23),
          border: const OutlineInputBorder(
            borderRadius: BorderRadius.all(
              Radius.circular(15),
            ),
          ),
          enabledBorder: const OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(15)),
            borderSide: BorderSide(width: 0.5, color: Colors.black26),
          ),
          focusedBorder: const OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(15)),
            borderSide: BorderSide(width: 0.7),
          ),
        ),
        onChanged: (value) {
          // Whenever the text changes, start searching immediately.
          controller.page = 1;
          controller.getList(searchKey: value.isNotEmpty ? value : null);
        },
      ),
    );
  }

  Widget _buildLoadingGrid() {
    return GridView(
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        childAspectRatio: 90 / 110,
        crossAxisSpacing: 10,
        mainAxisSpacing: 10,
      ),
      children: List.generate(8, (index) => const CardLoadingWidget()),
    );
  }

  Widget _buildPokemonGrid() {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: GridView.builder(
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          childAspectRatio: 90 / 120,
          crossAxisSpacing: 10,
          mainAxisSpacing: 10,
        ),
        itemCount:
            controller.pokeCards.length + (controller.loadMore.value ? 2 : 0),
        itemBuilder: (context, index) {
          if (index >= controller.pokeCards.length) {
            return const CardLoadingWidget();
          }
          var item = controller.pokeCards[index];
          return _buildPokemonCard(item);
        },
      ),
    );
  }

  Widget _buildPokemonCard(dynamic item) {
    return InkWell(
      onTap: () {
        Get.toNamed(AppRoutes.detail_page, arguments: (item, Colors.white));
      },
      child: Stack(
        children: [
          Hero(
            tag: Key(item.id),
            child: Container(
              margin: const EdgeInsets.all(2),
              decoration: BoxDecoration(
                image: DecorationImage(
                  fit: BoxFit.fitWidth,
                  image: CachedNetworkImageProvider(item.images.small),
                ),
                borderRadius: BorderRadius.circular(10),
                color: Colors.white,
                boxShadow: const [
                  BoxShadow(
                      color: Colors.black38, blurRadius: 8, spreadRadius: -4)
                ],
                border: Border.all(color: Colors.black26),
              ),
              child: Align(
                alignment: Alignment.bottomCenter,
                child: Container(
                  height: 80,
                  decoration: BoxDecoration(
                    borderRadius: const BorderRadius.only(
                      bottomLeft: Radius.circular(9),
                      bottomRight: Radius.circular(9),
                    ),
                    gradient: LinearGradient(
                      begin: Alignment.bottomCenter,
                      end: Alignment.topCenter,
                      colors: [
                        Colors.black.withOpacity(0.9),
                        Colors.transparent,
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Padding(
              padding: const EdgeInsets.only(bottom: 10, left: 10),
              child: Row(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Expanded(
                    child: Text(item.name,
                        textAlign: TextAlign.center,
                        style: const TextStyle(
                          color: Colors.white,
                          fontSize: 16,
                          fontWeight: FontWeight.w600,
                        ),
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis),
                  ),
                  Expanded(
                    child: Text(
                      "HP-${item.hp}",
                      textAlign: TextAlign.center,
                      style: const TextStyle(
                        color: Colors.white,
                        fontSize: 16,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class CardLoadingWidget extends StatelessWidget {
  const CardLoadingWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(6),
      child: Shimmer.fromColors(
        baseColor: Colors.grey.shade300,
        highlightColor: Colors.grey.shade50,
        child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            gradient: const LinearGradient(
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
              colors: [Colors.blue, Colors.purple],
            ),
          ),
        ),
      ),
    ).animate(
      delay: 500.ms,
      onPlay: (controller) => controller.repeat(period: 500.ms),
    );
  }
}
