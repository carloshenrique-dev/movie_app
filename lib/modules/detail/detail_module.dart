import 'package:app_filmes/application/modules/module.dart';
import 'package:app_filmes/modules/detail/detail_page.dart';
import 'package:get/get_navigation/src/routes/get_route.dart';

import 'detail_bindings.dart';

class DetailModule extends Module {
  @override
  List<GetPage> routers = [
    GetPage(
      name: '/movie/detail',
      page: () => DetailPage(),
      binding: DetailBindings(),
    )
  ];
}
