import 'package:app_filmes/modules/detail/widgets/movie_detail_content/movie_detail_content.dart';
import 'package:get/get.dart';
import 'package:flutter/material.dart';
import './detail_controller.dart';
import 'widgets/movie_detail_header/movie_detail_header.dart';

class DetailPage extends GetView<DetailController> {
  const DetailPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Obx(() {
            return Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                MovieDetailHeader(
                  movie: controller.movie.value,
                ),
                MovieDetailContent(movie: controller.movie.value)
              ],
            );
          }),
        ),
      ),
    );
  }
}
