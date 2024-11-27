import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:practical_pokemon/features/detail_page/detail_controller.dart';
import 'package:shimmer/shimmer.dart';

class DetailPage extends GetView<DetailController> {
  const DetailPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back, color: Colors.black),
          onPressed: () => Get.back(),
        ),
      ),
      body: Stack(
        children: [
          // Top Section: Animated Image
          AnimatedContainer(
            // margin: EdgeInsets.all(20),
            padding: const EdgeInsets.only(top: 50,bottom: 30),
            duration: const Duration(milliseconds: 400),
            curve: Curves.easeInOut,
            width: double.infinity,
            height: MediaQuery.of(context).size.height / 2,
            color: Colors.transparent,
            child: Center(
              child: Hero(
                tag: Key(controller.data.id),
                child: CachedNetworkImage(
                  placeholder: (context, url) {
                    return Center(
                        child: Shimmer.fromColors(
                            baseColor: Colors.grey[400]!,
                            highlightColor: Colors.grey[200]!,
                            child:
                                const Icon(Icons.photo_rounded, size: 60)));
                  },
                  imageUrl: controller.data.images.large,
                  // fit: BoxFit.fill,
                  width: MediaQuery.of(context).size.width,
                ),
              ),
            ),
          ),
          // Bottom Section: Details
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              height: MediaQuery.of(context).size.height / 2,
              padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 20),
              decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.vertical(
                  top: Radius.circular(30),
                ),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black12,
                    blurRadius: 10,
                    offset: Offset(0, -5),
                  ),
                ],
              ),
              child: SingleChildScrollView(
                child: Padding(
                  padding: const EdgeInsets.symmetric(
                      horizontal: 20.0), // Consistent spacing
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      // Pokémon Name
                      Center(
                        child: Hero(
                          tag: Key(
                              '${controller.data.name}${controller.data.id}'),
                          child: Text(
                            controller.data.name,
                            style: const TextStyle(
                              fontSize: 22,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(height: 20),
                      // Pokémon Details Table

                      Column(
                        children: [
                          getRow(
                              label: 'Artist', value: controller.data.artist),
                          getRow(
                              label: 'Supertype',
                              value: controller.data.supertype),
                          getRow(
                              label: 'Evolves From',
                              value: controller.data.evolvesFrom),
                          getRow(
                              label: 'Rules',
                              value: controller.data.rules.join('\n')),
                          getRow(
                              label: 'Set', value: controller.data.set.name),
                          getRow(
                              label: 'Type',
                              value: controller.data.types.join(', ')),
                          getRow(
                            label: 'Weakness',
                            value: controller.data.weaknesses
                                .map((e) => '${e.type}: ${e.value}')
                                .join(', '),
                          ),
                          getRow(
                            label: 'Release Date',
                            value: controller.data.set.releaseDate,
                          ),
                        ],
                      )
                    ],
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget getRow({required String label, required String value}) {
    return Padding(
      padding: const EdgeInsets.all(5),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded( flex:5,
            child: Text(
              label,
              textAlign: TextAlign.start,
              style: const TextStyle(
                 fontSize:17,
                color: Color(0xff121212),
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
           const Expanded( flex:2,
             child: Text(':',
              textAlign: TextAlign.start,
              style: TextStyle(
                fontSize:17,
                color: Color(0xff121212),
                fontWeight: FontWeight.bold,
              ),
                     ),
           ),
          Expanded( flex:3 ,
            child: Text(
              value == '' ? "--" : value,
              textAlign: TextAlign.start,
              style: const TextStyle(
                 fontSize:17,
                color: Color(0xff121212),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
