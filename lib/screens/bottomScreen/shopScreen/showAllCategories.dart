import 'package:ecommerce_app/config/colorFile.dart';
import 'package:ecommerce_app/controller/bottomController/shopController.dart';
import 'package:ecommerce_app/widgets/appBar.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ShowAllCategories extends StatelessWidget {
  ShowAllCategories({super.key});

  final controller = Get.put(ShopController());
  var categoryIndex = Get.arguments["index"];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: showAppBar(
        text: "Categories",
        isLeading: true,
        isAction: true,
        actionIcon: Icons.search,
      ),
      body: ListView(
        children: [
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 16, bottom: 8),
                child: Text(
                  "Choose category",
                  style: TextStyle(color: AppColors.grey, fontSize: 20),
                ),
              ),
            ],
          ),
          categoryIndex == 0
              ? ListView.builder(
                  shrinkWrap: true,
                  physics: ScrollPhysics(),
                  itemCount: controller.womenCategories.length,
                  itemBuilder: (context, index) {
                    return Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 16),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(16.0),
                                child: Text(
                                  "${controller.womenCategories[index]["type"]}",
                                  style: TextStyle(
                                    color: AppColors.primary,
                                    fontSize: 26,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Container(
                          height: 2,
                          decoration: BoxDecoration(
                            border: Border(
                              bottom: BorderSide(
                                color: AppColors.grey,
                                width: 2,
                              ),
                            ),
                          ),
                        ),
                      ],
                    );
                  },
                )
              : categoryIndex == 1
                  ? ListView.builder(
                      shrinkWrap: true,
                      physics: ScrollPhysics(),
                      itemCount: controller.menCategories.length,
                      itemBuilder: (context, index) {
                        return Column(
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(left: 16),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.all(16.0),
                                    child: Text(
                                      "${controller.menCategories[index]["type"]}",
                                      style: TextStyle(
                                        color: AppColors.primary,
                                        fontSize: 26,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Container(
                              height: 2,
                              decoration: BoxDecoration(
                                border: Border(
                                  bottom: BorderSide(
                                    color: AppColors.grey,
                                    width: 2,
                                  ),
                                ),
                              ),
                            ),
                          ],
                        );
                      },
                    )
                  : ListView.builder(
                      shrinkWrap: true,
                      physics: ScrollPhysics(),
                      itemCount: controller.kidCategories.length,
                      itemBuilder: (context, index) {
                        return Column(
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(left: 16),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.all(16.0),
                                    child: Text(
                                      "${controller.kidCategories[index]["type"]}",
                                      style: TextStyle(
                                        color: AppColors.primary,
                                        fontSize: 26,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Container(
                              height: 2,
                              decoration: BoxDecoration(
                                border: Border(
                                  bottom: BorderSide(
                                    color: AppColors.grey,
                                    width: 2,
                                  ),
                                ),
                              ),
                            ),
                          ],
                        );
                      },
                    )
        ],
      ),
    );
  }
}
