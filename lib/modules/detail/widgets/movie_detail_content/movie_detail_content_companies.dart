import 'package:app_filmes/application/ui/theme_extensions.dart';
import 'package:flutter/material.dart';

import 'package:app_filmes/models/movie_detail_model.dart';

class MovieDetailContentCompanies extends StatelessWidget {
  final MovieDetailModel? movies;
  const MovieDetailContentCompanies({
    Key? key,
    required this.movies,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(8),
      margin: EdgeInsets.only(
        bottom: 5,
      ),
      child: RichText(
        text: TextSpan(
            text: 'Companhia(s) produtora(s): ',
            style: TextStyle(
              fontWeight: FontWeight.bold,
              color: Color(0xFF222222),
            ),
            children: [
              TextSpan(
                  text: movies?.productionCompanies.join(', ') ?? '',
                  style: TextStyle(
                      height: 1.2,
                      color: context.themeGray,
                      fontWeight: FontWeight.normal)),
            ]),
      ),
    );
  }
}
