import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../constants/constants.dart';
import '../controllers/main_controller.dart';

class MainView extends GetView<MainController> {
  MainView({super.key});

  var controller = Get.put(MainController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Obx(() => controller.pages[controller.currentIndex.value]),
      bottomNavigationBar: Obx(
        () => BottomNavigationBar(
          onTap: controller.onTap,
          selectedFontSize: 0,
          unselectedFontSize: 0,
          type: BottomNavigationBarType.fixed,
          currentIndex: controller.currentIndex.value,
          showSelectedLabels: false,
          showUnselectedLabels: false,
          selectedItemColor: Colors.black54,
          unselectedItemColor: AppColors.mainTextColor.withOpacity(0.5),
          elevation: 0,
          items: const [
            BottomNavigationBarItem(icon: Icon(Icons.apps), label: "Home"),
            BottomNavigationBarItem(
                icon: Icon(Icons.bar_chart), label: "Popular"),
            BottomNavigationBarItem(icon: Icon(Icons.search), label: "Search"),
            BottomNavigationBarItem(icon: Icon(Icons.person), label: "Profile"),
          ],
        ),
      ),
    );
  }
}
