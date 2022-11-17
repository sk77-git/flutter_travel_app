import 'package:get/get.dart';
import 'package:getx_ecommerce/app/modules/home/views/home_view.dart';
import 'package:getx_ecommerce/app/modules/popular/views/popular_view.dart';
import 'package:getx_ecommerce/app/modules/profile/views/profile_view.dart';
import 'package:getx_ecommerce/app/modules/search/views/search_view.dart';

class MainController extends GetxController {
  var pages = [HomeView(), PopularView(), SearchView(), ProfileView()].obs;
  var currentIndex = 0.obs;
  static const String TAG = "MainController";

  void onTap(int value) {
    currentIndex.value = value;
  }

  @override
  void onClose() {}
}
