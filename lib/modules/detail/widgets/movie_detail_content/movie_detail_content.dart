import 'package:app_filmes/modules/detail/widgets/movie_detail_content/movie_detail_content_cast.dart';
import 'package:app_filmes/modules/detail/widgets/movie_detail_content/movie_detail_content_companies.dart';
import 'package:app_filmes/modules/detail/widgets/movie_detail_content/movie_detail_content_credits.dart';
import 'package:app_filmes/modules/detail/widgets/movie_detail_content/movie_detail_content_title.dart';
import 'package:flutter/material.dart';

import 'package:app_filmes/models/movie_detail_model.dart';

class MovieDetailContent extends StatelessWidget {
  final MovieDetailModel? movie;
  const MovieDetailContent({
    Key? key,
    required this.movie,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        MovieDetailContentTitle(movie: movie),
        MovieDetailContentCredits(movies: movie),
        MovieDetailContentCompanies(movies: movie),
        MovieDetailContentCast(movies: movie),
      ],
    );
  }
}
