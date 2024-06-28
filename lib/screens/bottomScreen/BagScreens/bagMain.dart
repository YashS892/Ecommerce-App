import 'package:ecommerce_app/config/colorFile.dart';
import 'package:ecommerce_app/controller/bottomController/bagController.dart';
import 'package:ecommerce_app/widgets/appBar.dart';
import 'package:ecommerce_app/widgets/cacheImage.dart';
import 'package:ecommerce_app/widgets/container.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class BagScreen extends StatelessWidget {
  BagScreen({super.key});

  final bagController = Get.put(BagController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.backgroundColor,
      appBar: showAppBar(isAction: true, actionIcon: Icons.search),
      body: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Text(
              "My Bag",
              style: TextStyle(
                color: AppColors.primary,
                fontSize: 32,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          SizedBox(
            height: Get.height / 2,
            child: ListView.builder(
              physics: BouncingScrollPhysics(),
              shrinkWrap: true,
              itemCount: 5,
              itemBuilder: (context, index) {
                return Container(
                  width: Get.width,
                  margin: EdgeInsets.all(16.0),
                  height: 160,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(16),
                    color: AppColors.white,
                    shape: BoxShape.rectangle,
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Container(
                        // height: Get.height,
                        width: 120,
                        decoration: BoxDecoration(
                          color: AppColors.grey,
                          borderRadius: BorderRadius.circular(8),
                        ),
                      ),
                      Expanded(
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                children: [
                                  Text(
                                    "T-Shirt",
                                    style: TextStyle(
                                      color: AppColors.primary,
                                      fontSize: 26,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  Spacer(),
                                  PopupMenuButton<String>(
                                    color: AppColors.white,
                                    iconSize: 26,
                                    icon: Icon(
                                      Icons.more_vert,
                                      color: AppColors.primary,
                                      size: 26,
                                    ),
                                    elevation: 2,
                                    itemBuilder: (BuildContext context) {
                                      return <PopupMenuEntry<String>>[
                                        PopupMenuItem<String>(
                                          value: 'option1',
                                          child: Text('Add to favorites'),
                                        ),
                                        PopupMenuItem<String>(
                                          value: 'option2',
                                          child: Text('Delete from the list'),
                                        ),
                                      ];
                                    },
                                    onSelected: (String value) {
                                      // Perform action based on selected value
                                      switch (value) {
                                        case 'option1':
                                          // Do something for option 1
                                          break;
                                        case 'option2':
                                          // Do something for option 2
                                          break;
                                        case 'option3':
                                          // Do something for option 3
                                          break;
                                      }
                                    },
                                  ),
                                ],
                              ),
                              Row(
                                children: [
                                  Text(
                                    "Color :",
                                    style: TextStyle(
                                      fontSize: 16.0,
                                      color: AppColors.grey,
                                    ),
                                  ),
                                  Text(
                                    " Black",
                                    style: TextStyle(
                                      fontSize: 16.0,
                                      color: AppColors.primary,
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(left: 8),
                                    child: Text(
                                      "Size :",
                                      style: TextStyle(
                                        fontSize: 16.0,
                                        color: AppColors.grey,
                                      ),
                                    ),
                                  ),
                                  Text(
                                    " L",
                                    style: TextStyle(
                                      fontSize: 16.0,
                                      color: AppColors.primary,
                                    ),
                                  ),
                                ],
                              ),
                              SizedBox(
                                height: 25,
                              ),
                              Row(
                                children: [
                                  Card(
                                    elevation: 2,
                                    child: InkWell(
                                      onTap: () {
                                        if (bagController.productCounter.value >
                                            1) {
                                          bagController.productCounter.value--;
                                        }
                                      },
                                      child: Container(
                                        width: 40,
                                        height: 40,
                                        decoration: BoxDecoration(
                                            color: AppColors.backgroundColor,
                                            borderRadius:
                                                BorderRadius.circular(16)),
                                        child: Icon(
                                          Icons.horizontal_rule,
                                          size: 26.0,
                                          color: AppColors.grey,
                                        ),
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(
                                        left: 16.0, right: 16.0),
                                    child: Obx(() {
                                      return Text(
                                        "${bagController.productCounter.value}",
                                        style: TextStyle(
                                            color: AppColors.primary,
                                            fontSize: 26),
                                      );
                                    }),
                                  ),
                                  Card(
                                    elevation: 2,
                                    child: InkWell(
                                      onTap: () {
                                        bagController.productCounter.value++;
                                      },
                                      child: Container(
                                        width: 40,
                                        height: 40,
                                        decoration: BoxDecoration(
                                          color: AppColors.backgroundColor,
                                          borderRadius:
                                              BorderRadius.circular(16),
                                        ),
                                        child: Center(
                                            child: Icon(
                                          Icons.add,
                                          size: 26.0,
                                          color: AppColors.grey,
                                        )),
                                      ),
                                    ),
                                  ),
                                  Spacer(),
                                  Text(
                                    "51\$",
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 22,
                                      color: AppColors.primary,
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                );
              },
            ),
          ),
          InkWell(
            onTap: () => showSheet(context: context),
            child: Container(
              margin: EdgeInsets.all(16),
              height: 50,
              decoration: BoxDecoration(
                color: AppColors.backgroundColor,
                borderRadius: BorderRadius.circular(8),
                border: Border.all(
                  color: AppColors.white,
                  width: 1.5,
                ),
              ),
              child: Padding(
                padding: const EdgeInsets.only(top: 8, left: 8),
                child: Row(
                  children: [
                    Text(
                      "Enter your promo code",
                      style: TextStyle(
                        color: AppColors.grey,
                        fontSize: 18,
                      ),
                    ),
                    Spacer(),
                    Container(
                      height: 55,
                      width: 55,
                      decoration: BoxDecoration(
                        color: AppColors.primary,
                        shape: BoxShape.circle,
                      ),
                      child: Icon(
                        Icons.arrow_right_alt,
                        color: AppColors.white,
                        size: 36,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 16, right: 16, top: 8),
            child: Row(
              children: [
                Text(
                  "Total Amount",
                  style: TextStyle(
                    color: AppColors.grey,
                    fontSize: 26,
                  ),
                ),
                Spacer(),
                Text(
                  "5500",
                  style: TextStyle(
                      color: AppColors.primary,
                      fontSize: 26,
                      fontWeight: FontWeight.bold),
                ),
              ],
            ),
          ),
          showContainer(
            text: "CHECK OUT",
            height: 50.0,
            radiusValue: 16.0,
            margin: 16.0,
          ),
        ],
      ),
    );
  }

  showSheet({BuildContext? context}) {
    return showModalBottomSheet(
      useRootNavigator: true,
      isScrollControlled: false,
      elevation: 0,
      enableDrag: true,
      backgroundColor: AppColors.backgroundColor,
      context: context!,
      builder: (_) => DraggableScrollableSheet(
        expand: false,
        builder: (_, controller) => ListView(
          controller: controller,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 10),
                  child: GestureDetector(
                    onTap: () {
                      Get.back();
                    },
                    child: Container(
                      height: 5,
                      width: 48,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(16),
                        color: AppColors.grey,
                      ),
                    ),
                  ),
                ),
              ],
            ),
            Container(
              margin: EdgeInsets.all(16),
              height: 50,
              decoration: BoxDecoration(
                color: AppColors.backgroundColor,
                borderRadius: BorderRadius.circular(8),
                boxShadow: [
                  BoxShadow(
                    color: AppColors.grey,
                    offset: const Offset(
                      0.0,
                      0.0,
                    ),
                    blurRadius: 1.0,
                    spreadRadius: 1.0,
                  ),
                ],
              ),
              child: Padding(
                padding: const EdgeInsets.only(top: 8, left: 8),
                child: Row(
                  children: [
                    Text(
                      "Enter your promo code",
                      style: TextStyle(
                        color: AppColors.grey,
                        fontSize: 18,
                      ),
                    ),
                    Spacer(),
                    Container(
                      height: 55,
                      width: 55,
                      decoration: BoxDecoration(
                        color: AppColors.primary,
                        shape: BoxShape.circle,
                      ),
                      child: Icon(
                        Icons.arrow_right_alt,
                        color: AppColors.white,
                        size: 36,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 16.0),
              child: Text(
                "Your Promo Codes",
                style: TextStyle(
                    color: AppColors.primary,
                    fontWeight: FontWeight.bold,
                    fontSize: 26),
              ),
            ),
            ListView.builder(
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              itemCount: bagController.promoCodes.length,
              itemBuilder: (context, index) {
                return Container(
                  height: 100,
                  margin: EdgeInsets.all(16),
                  width: Get.width,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(16),
                    border: Border.all(
                      color: AppColors.primary,
                      width: 2,
                    ),
                  ),
                  child: Row(
                    children: [
                      Container(
                        height: 100,
                        width: 80,
                        child: showImage(
                          imageUrl: bagController.promoCodes[index]["image"],
                          context: context,
                          radiusValue: 16.00,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 8.0, top: 8.0),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "${bagController.promoCodes[index]["mainText"]}",
                              style: TextStyle(
                                  color: AppColors.primary,
                                  fontSize: 22,
                                  fontWeight: FontWeight.bold),
                            ),
                            Text(
                              "${bagController.promoCodes[index]["childText"]}",
                              style: TextStyle(
                                color: AppColors.primary,
                                fontSize: 18,
                                // fontWeight: FontWeight.bold
                              ),
                            ),
                          ],
                        ),
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          Text(
                            "${bagController.promoCodes[index]["validity"]}",
                            style: TextStyle(
                              color: AppColors.grey,
                              fontSize: 16,
                            ),
                          ),
                          showContainer(
                            color: AppColors.containerColor,
                            radiusValue: 16.0,
                            height: 50.0,
                            margin: 8.0,
                            width: 100.0,
                            text: "Apply",  
                          ),
                        ],
                      ),
                    ],
                  ),
                );
              },
            )
          ],
        ),
      ),
    );
  }
}
