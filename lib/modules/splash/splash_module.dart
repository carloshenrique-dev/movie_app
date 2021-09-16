import 'package:app_filmes/application/modules/module.dart';
import 'package:app_filmes/modules/splash/splash_bindings.dart';
import 'package:get/get_navigation/src/routes/get_route.dart';

import 'splash_page.dart';

class SplashModule implements Module {
  @override
  List<GetPage> routers = [
    GetPage(
      name: '/',
      page: () => SplashPage(),
      binding: SplashBindings(),
    ),
  ];
}
