import 'package:flutter/material.dart';

import 'package:app_filmes/application/ui/theme_extensions.dart';
import 'package:app_filmes/models/genres_model.dart';

class FilterTag extends StatelessWidget {
  final GenresModel genresModel;
  final bool selected;
  final VoidCallback onPressed;
  const FilterTag({
    Key? key,
    required this.genresModel,
    this.selected = false,
    required this.onPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onPressed,
      child: Container(
        margin: EdgeInsets.all(5),
        padding: EdgeInsets.all(10),
        constraints: BoxConstraints(
          minWidth: 100,
          minHeight: 30,
        ),
        decoration: BoxDecoration(
          color: selected ? context.themeRed : Colors.black87,
          borderRadius: BorderRadius.circular(30),
        ),
        child: Align(
          alignment: Alignment.center,
          child: Text(
            genresModel.name,
            style: TextStyle(
              color: Colors.white,
              fontSize: 14,
            ),
          ),
        ),
      ),
    );
  }
}
