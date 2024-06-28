import 'package:ecommerce_app/config/colorFile.dart';
import 'package:ecommerce_app/controller/bottomController/shopController.dart';
import 'package:ecommerce_app/screens/bottomScreen/shopScreen/showAllCategories.dart';
import 'package:ecommerce_app/widgets/appBar.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../widgets/container.dart';

class ShopPage extends StatelessWidget {
  ShopPage({super.key});

  final controller = Get.put(ShopController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.backgroundColor,
      appBar: showAppBar(
        text: "Categories",
        isLeading: true,
        isAction: true,
        actionIcon: Icons.search,
      ),
      body: ListView(
        children: [
          Obx(
            () {
              return Container(
                width: Get.width,
                height: 50,
                margin: EdgeInsets.only(right: 8, left: 8),
                padding: EdgeInsets.only(left: 8, right: 8),
                decoration: BoxDecoration(
                  color: AppColors.white,
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey,
                      spreadRadius: 0,
                      blurRadius: 2,
                    )
                  ],
                  borderRadius: BorderRadius.circular(16.0),
                ),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      children: [
                        InkWell(
                          onTap: () => controller.selectIndex.value = 0,
                          child: Text(
                            "Women",
                            style: TextStyle(
                              color: AppColors.primary,
                              fontSize:
                                  controller.selectIndex.value == 0 ? 24 : 20,
                              fontWeight: controller.selectIndex.value == 0
                                  ? FontWeight.bold
                                  : FontWeight.w500,
                            ),
                          ),
                        ),
                        controller.selectIndex.value == 0
                            ? Container(
                                width: 100,
                                height: 3,
                                margin: EdgeInsets.only(top: 8),
                                color: AppColors.containerColor,
                              )
                            : SizedBox(
                                height: 0.0,
                                width: 0.0,
                              )
                      ],
                    ),
                    Column(
                      children: [
                        InkWell(
                          onTap: () => controller.selectIndex.value = 1,
                          child: Text(
                            "Men",
                            style: TextStyle(
                              color: AppColors.primary,
                              fontSize:
                                  controller.selectIndex.value == 1 ? 24 : 20,
                              fontWeight: controller.selectIndex.value == 1
                                  ? FontWeight.bold
                                  : FontWeight.w500,
                            ),
                          ),
                        ),
                        controller.selectIndex.value == 1
                            ? Container(
                                width: 100,
                                margin: EdgeInsets.only(top: 8),
                                height: 3,
                                color: AppColors.containerColor,
                              )
                            : SizedBox(
                                height: 0.0,
                                width: 0.0,
                              )
                      ],
                    ),
                    Column(
                      children: [
                        InkWell(
                          onTap: () => controller.selectIndex.value = 2,
                          child: Text(
                            "Kids",
                            style: TextStyle(
                              color: AppColors.primary,
                              fontSize:
                                  controller.selectIndex.value == 2 ? 24 : 20,
                              fontWeight: controller.selectIndex.value == 2
                                  ? FontWeight.bold
                                  : FontWeight.w500,
                            ),
                          ),
                        ),
                        controller.selectIndex.value == 2
                            ? Container(
                                width: 100,
                                height: 3,
                                margin: EdgeInsets.only(top: 8),
                                color: AppColors.containerColor,
                              )
                            : SizedBox(
                                height: 0.0,
                                width: 0.0,
                              )
                      ],
                    ),
                  ],
                ),
              );
            },
          ),
          showContainer(
            isDoubleText: true,
            color: AppColors.containerColor,
            radiusValue: 16.0,
            margin: 16.0,
            height: 100.0,
            text: "SUMMER SALES",
            text1: "Up to 50% off",
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              InkWell(
                onTap: () {
                  Get.to(() =>ShowAllCategories(), arguments: {
                    "index": controller.selectIndex.value,
                  });
                  debugPrint("index value is ${controller.selectIndex.value}");
                },
                child: Padding(
                  padding: const EdgeInsets.only(right: 16),
                  child: Icon(
                    Icons.more_horiz,
                    color: AppColors.primary,
                    size: 36,
                  ),
                ),
              ),
            ],
          ),
          ListView.builder(
            itemCount: 20,
            physics: ScrollPhysics(),
            shrinkWrap: true,
            itemBuilder: (context, index) {
              return Container(
                height: 100.0,
                width: Get.width,
                margin: EdgeInsets.all(16.0),
                decoration: BoxDecoration(
                    color: AppColors.white,
                    borderRadius: BorderRadius.circular(16.0)),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 8),
                      child: Text(
                        "New",
                        style: TextStyle(
                            color: AppColors.primary,
                            fontWeight: FontWeight.w500,
                            fontSize: 26),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(right: 8),
                      child: Text(
                        "New",
                        style: TextStyle(
                            color: AppColors.primary,
                            fontWeight: FontWeight.w500,
                            fontSize: 26),
                      ),
                    )
                  ],
                ),
              );
            },
          ),
        ],
      ),
    );
  }
}
