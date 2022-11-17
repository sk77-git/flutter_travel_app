import 'package:get/get.dart';
import 'package:getx_ecommerce/app/modules/main/bindings/main_binding.dart';
import 'package:getx_ecommerce/app/modules/main/views/main_view.dart';
import 'package:getx_ecommerce/app/modules/popular/bindings/popular_binding.dart';
import 'package:getx_ecommerce/app/modules/popular/views/popular_view.dart';
import 'package:getx_ecommerce/app/modules/profile/bindings/profile_binding.dart';
import 'package:getx_ecommerce/app/modules/profile/views/profile_view.dart';
import 'package:getx_ecommerce/app/modules/search/bindings/search_binding.dart';
import 'package:getx_ecommerce/app/modules/search/views/search_view.dart';

import '../modules/home/bindings/home_binding.dart';
import '../modules/home/views/home_view.dart';
import '../modules/welcome/bindings/welcome_binding.dart';
import '../modules/welcome/views/welcome_view.dart';

part 'app_routes.dart';

class AppPages {
  AppPages._();

  static const INITIAL = Routes.WELCOME;

  static final routes = [
    GetPage(
      name: _Paths.HOME,
      page: () => HomeView(),
      binding: HomeBinding(),
    ),
    GetPage(
      name: _Paths.WELCOME,
      page: () => const WelcomeView(),
      binding: WelcomeBinding(),
    ),
    GetPage(
      name: _Paths.MAIN,
      page: () => MainView(),
      binding: MainBinding(),
    ),
    GetPage(
      name: _Paths.POPULAR,
      page: () => PopularView(),
      binding: PopularBinding(),
    ),
    GetPage(
      name: _Paths.SEARCH,
      page: () => SearchView(),
      binding: SearchBinding(),
    ),
    GetPage(
      name: _Paths.PROFILE,
      page: () => ProfileView(),
      binding: ProfileBinding(),
    ),
  ];
}
