import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pet_doctor/routes/links.dart';

class BottomNavigationBarController extends GetxController {
  RxInt currentIndex = 0.obs;

  void onItemTapped(int index) {
    currentIndex = RxInt(index);
  }

  Obx publicNavigationBar() {
    return Obx(
      () => BottomNavigationBar(
          currentIndex:
              Get.find<BottomNavigationBarController>().currentIndex.toInt(),
          onTap: (value) {
            switch (value) {
              case 0:
                Get.toNamed(AppLinks.COMMUNITY_HOME);

                break;
              case 1:
                Get.toNamed(AppLinks.HOSPITAL_HOME);

                break;
              case 2:
                Get.toNamed(AppLinks.HOME);

                break;
              case 3:
                Get.toNamed(AppLinks.PHARMACY_HOME);

                break;
              case 4:
                Get.toNamed(AppLinks.MYMENU_HOME);

                break;
              default:
            }
          },
          items: [
            const BottomNavigationBarItem(
              icon: Icon(Icons.window),
              label: '커뮤니티',
            ),
            const BottomNavigationBarItem(
                icon: Icon(Icons.local_hospital_outlined), label: '병원'),
            const BottomNavigationBarItem(icon: Icon(Icons.home), label: '홈'),
            const BottomNavigationBarItem(
                icon: Icon(Icons.local_pharmacy_outlined), label: '약국'),
            const BottomNavigationBarItem(
                icon: Icon(Icons.menu_sharp), label: '내메뉴'),
          ]),
    );
  }
}
