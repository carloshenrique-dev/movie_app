import 'package:app_filmes/application/ui/theme_extensions.dart';
import 'package:flutter/material.dart';
import 'package:app_filmes/models/movie_detail_model.dart';

class MovieDetailContentCredits extends StatelessWidget {
  final MovieDetailModel? movies;
  const MovieDetailContentCredits({
    Key? key,
    required this.movies,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: ConstrainedBox(
        constraints: BoxConstraints(
          minHeight: 50,
        ),
        child: Text(
          movies?.overview ?? '',
          style: TextStyle(fontSize: 14, color: context.themeGray, height: 1.3),
        ),
      ),
    );
  }
}
