import 'package:ecommerce_app/config/colorFile.dart';
import 'package:ecommerce_app/controller/bottomController.dart';
import 'package:ecommerce_app/screens/bottomScreen/BagScreens/bagMain.dart';
import 'package:ecommerce_app/screens/bottomScreen/profileScreen/profileMain.dart';
import 'package:ecommerce_app/screens/bottomScreen/shopScreen/shopMainPage.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class BottomScreen extends StatelessWidget {
  BottomScreen({super.key});

  final controller = Get.put(BottomController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Obx(
        () => controller.bottomIndex.value == 1
            ? ShopPage()
            : controller.bottomIndex.value == 2
                ? BagScreen()
                : controller.bottomIndex.value == 4
                    ? ProfileMainPage()
                    : SizedBox(),
      ),
      bottomNavigationBar: Obx(
        () {
          return BottomNavigationBar(
            onTap: (value) {
              controller.bottomIndex.value = value;
            },
            currentIndex: controller.bottomIndex.value,
            selectedItemColor: AppColors.mainColor,
            unselectedItemColor: AppColors.childText,
            unselectedLabelStyle: TextStyle(color: AppColors.childText),
            iconSize: 30,
            showUnselectedLabels: true,
            selectedLabelStyle: TextStyle(
              color: AppColors.mainColor,
            ),
            items: [
              BottomNavigationBarItem(
                label: "Home",
                icon: controller.bottomIndex.value == 0
                    ? Icon(
                        Icons.home,
                      )
                    : Icon(
                        Icons.home_outlined,
                      ),
              ),
              BottomNavigationBarItem(
                label: "Shop",
                icon: controller.bottomIndex.value == 1
                    ? Icon(Icons.shopping_cart)
                    : Icon(Icons.shopping_cart_outlined),
              ),
              BottomNavigationBarItem(
                label: "Bag",
                icon: controller.bottomIndex.value == 2
                    ? Icon(Icons.shopping_bag)
                    : Icon(Icons.shopping_bag_outlined),
              ),
              BottomNavigationBarItem(
                label: "Favorites",
                icon: controller.bottomIndex.value == 3
                    ? Icon(Icons.favorite)
                    : Icon(Icons.favorite_border_rounded),
              ),
              BottomNavigationBarItem(
                label: "Profile",
                icon: controller.bottomIndex.value == 4
                    ? Icon(Icons.person)
                    : Icon(Icons.person_outline_outlined),
              ),
            ],
          );
        },
      ),
    );
  }
}
