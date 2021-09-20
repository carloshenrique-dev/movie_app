import 'package:app_filmes/application/ui/theme_extensions.dart';
import 'package:app_filmes/modules/detail/widgets/movie_detail_content/movie_cast_content.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:app_filmes/models/movie_detail_model.dart';

class MovieDetailContentCast extends StatelessWidget {
  final MovieDetailModel? movies;
  final showPanel = false.obs;
  MovieDetailContentCast({
    Key? key,
    required this.movies,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Divider(
          height: 1,
          color: context.themeGray,
        ),
        Obx(() {
          return ExpansionPanelList(
            elevation: 0,
            expandedHeaderPadding: EdgeInsets.zero,
            expansionCallback: (panelIndex, isExpanded) {
              showPanel.toggle();
            },
            children: [
              ExpansionPanel(
                canTapOnHeader: false,
                backgroundColor: Colors.white,
                isExpanded: showPanel.value,
                headerBuilder: (context, isExpanded) {
                  return Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Align(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        'Elenco',
                        style: TextStyle(
                          fontSize: 16,
                        ),
                      ),
                    ),
                  );
                },
                body: SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: movies?.cast
                            .map((e) => MovieCastContent(
                                  cast: e,
                                ))
                            .toList() ??
                        [],
                  ),
                ),
              ),
            ],
          );
        })
      ],
    );
  }
}
