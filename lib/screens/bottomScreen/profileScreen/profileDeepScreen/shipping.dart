import 'package:ecommerce_app/config/colorFile.dart';
import 'package:ecommerce_app/controller/bottomController/profileController.dart';
import 'package:ecommerce_app/screens/bottomScreen/profileScreen/profileDeepScreen/addNewAddress.dart';
import 'package:ecommerce_app/screens/bottomScreen/profileScreen/profileDeepScreen/editAddress.dart';
import 'package:ecommerce_app/widgets/appBar.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ShippingAddress extends StatelessWidget {
  ShippingAddress({super.key});

  final controller = Get.put(ProfileController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: showAppBar(
        text: "Shipping Addresses",
        isLeading: true,
      ),
      body: ListView.builder(
        physics: ScrollPhysics(),
        itemCount: 5,
        shrinkWrap: true,
        cacheExtent: Get.height,
        itemBuilder: (context, index) {
          return Card(
            margin: EdgeInsets.all(16),
            color: AppColors.white,
            elevation: 2.0,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.only(right: 16, left: 16, top: 8),
                  child: Row(
                    children: [
                      Text(
                        "John Doe",
                        style: TextStyle(
                          color: AppColors.primary,
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Spacer(),
                      InkWell(
                        onTap: () {
                          Get.to(
                            EditAddress(),
                            arguments: {
                              "name":controller.nameControllerForShipping.value.text,
                              "address":controller.addressControllerForShipping.value.text,
                              "city":controller.cityControllerForShipping.value.text,
                              "state":controller.stateControllerForShipping.value.text,
                              "zip":controller.zipCodeControllerForShipping.value.text,
                              "country":controller.countryControllerForShipping.value.text,
                            }
                          );
                        },
                        child: Text(
                          "Edit",
                          style: TextStyle(
                            color: AppColors.mainColor,
                            fontSize: 18,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 4, left: 16),
                  child: Text(
                    "3 Sarthi Sky",
                    style: TextStyle(
                      color: AppColors.primary,
                      fontSize: 16,
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 4, left: 16),
                  child: Text(
                    "Sudama circle, Mota varachha",
                    style: TextStyle(
                      color: AppColors.primary,
                      fontSize: 16,
                    ),
                  ),
                ),
                Row(
                  children: [
                    Obx(() {
                      return Checkbox(
                        value: controller.isCheckShipping.value,
                        onChanged: (newValue) {
                          controller.isCheckShipping.value = newValue!;
                        },
                      );
                    }),
                    Text(
                      "Use as the shipping address",
                      style: TextStyle(
                        fontSize: 16,
                        color: AppColors.primary,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          );
        },
      ),
      floatingActionButton: InkWell(
        onTap: () => Get.to(AddShippingAddress()),
        child: Container(
          width: 60,
          height: 60,
          decoration: BoxDecoration(
            color: AppColors.primary,
            shape: BoxShape.circle,
          ),
          child: Icon(
            Icons.add,
            color: AppColors.white,
            size: 26,
          ),
        ),
      ),
    );
  }
}
