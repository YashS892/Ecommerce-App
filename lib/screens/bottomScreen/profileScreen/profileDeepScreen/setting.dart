import 'package:ecommerce_app/config/colorFile.dart';
import 'package:ecommerce_app/controller/AuthController.dart';
import 'package:ecommerce_app/controller/bottomController/profileController.dart';
import 'package:ecommerce_app/widgets/appBar.dart';
import 'package:ecommerce_app/widgets/container.dart';
import 'package:ecommerce_app/widgets/textField.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Settings extends StatelessWidget {
  Settings({super.key});

  final controller = Get.put(ProfileController());
  final authController = Get.put(AuthController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: showAppBar(
        isLeading: true,
        isAction: true,
        actionIcon: Icons.search
      ),
      body: ListView(
        children: [
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 16, top: 16),
                child: Text(
                  "Settings",
                  style: TextStyle(
                    color: AppColors.primary,
                    fontSize: 26,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ],
          ),
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 16, top: 16),
                child: Text(
                  "Personal Information",
                  style: TextStyle(
                    color: AppColors.primary,
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ],
          ),
          textField(
            labelText: "Full Name",
            cController: controller.updateName.value,
          ),
          InkWell(
            onTap: () {
              controller.selectDate(context: context);
            },
            child: Container(
              height: 70,
              width: 70,
              margin: EdgeInsets.all(16),
              decoration: BoxDecoration(
                  color: AppColors.white,
                  borderRadius: BorderRadius.circular(16)),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 8, top: 8),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Date Of Birth",
                        ),
                        Obx(() {
                          return Text(
                            controller.datePick.value.text,
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: AppColors.primary,
                              fontSize: 18,
                            ),
                          );
                        }),
                      ],
                    ),
                  ),
                  Spacer(),
                  Padding(
                    padding: const EdgeInsets.only(top: 8, right: 8),
                    child: Icon(
                      Icons.calendar_month_sharp,
                      size: 26,
                      color: AppColors.primary,
                    ),
                  ),
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Row(
              children: [
                Text(
                  "Password",
                  style: TextStyle(
                    fontSize: 18,
                    color: AppColors.primary,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Spacer(),
                InkWell(
                  onTap: () {
                    showModalBottomSheet(
                      backgroundColor: AppColors.backgroundColor,
                      context: context,
                      builder: (BuildContext context) {
                        return Container(
                          height: Get.height,
                          decoration: BoxDecoration(
                            color: AppColors.backgroundColor,
                            borderRadius: BorderRadius.circular(40.0),
                          ),
                          child: Center(
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: <Widget>[
                                InkWell(
                                  onTap: () => Get.back(),
                                  child: Container(
                                    height: 5,
                                    margin: EdgeInsets.all(8),
                                    width: 70,
                                    decoration: BoxDecoration(
                                        color: AppColors.grey,
                                        borderRadius: BorderRadius.circular(16)),
                                  ),
                                ),
                                textField(
                                  labelText: "Old password",
                                  cController:
                                      authController.passwordController.value,
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(right: 16),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.end,
                                    children: [
                                      Text(
                                        "Forget Password?",
                                        style: TextStyle(
                                            color: AppColors.grey, fontSize: 16),
                                      ),
                                    ],
                                  ),
                                ),
                                textField(
                                  labelText: "New password",
                                  cController:
                                      authController.passwordController.value,
                                ),
                                textField(
                                  labelText: "Repeat New password",
                                  cController:
                                      authController.passwordController.value,
                                ),
                                InkWell(
                                  onTap: () {
                                    Get.back();
                                  },
                                  child: showContainer(
                                      color: AppColors.containerColor,
                                      margin: 16.0,
                                      height: 60.0,
                                      text: "Save Password",
                                      radiusValue: 32.0),
                                )
                              ],
                            ),
                          ),
                        );
                      },
                    );
                  },
                  child: Text(
                    "Change",
                    style: TextStyle(
                      fontSize: 18,
                      color: AppColors.grey,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ],
            ),
          ),
          Container(
            height: 80.0,
            margin: EdgeInsets.all(16.0),
            padding: EdgeInsets.all(16.0),
            color: AppColors.white,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Password",
                  style: TextStyle(color: AppColors.grey, fontSize: 16),
                ),
                Text(
                  "***********",
                  style: TextStyle(color: AppColors.grey, fontSize: 16),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 16),
            child: Row(
              children: [
                Text(
                  "Notification",
                  style: TextStyle(
                      fontSize: 18,
                      color: AppColors.primary,
                      fontWeight: FontWeight.bold),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(right: 16, left: 16, top: 16),
            child: Row(
              children: [
                Text(
                  "Sales",
                  style: TextStyle(
                    color: AppColors.primary,
                    fontSize: 16,
                  ),
                ),
                Spacer(),
                Obx(() {
                  return Switch(
                    value: controller.salesSwitch.value,
                    onChanged: (value) {
                      controller.salesSwitch.value = value;
                    },
                    activeColor: AppColors.green,
                    activeTrackColor: Colors.grey.withOpacity(0.3),
                    inactiveThumbColor: AppColors.white,
                    inactiveTrackColor: Colors.grey.withOpacity(0.3),
                  );
                }),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 16, right: 16),
            child: Row(
              children: [
                Text(
                  "New Arrivals",
                  style: TextStyle(
                    color: AppColors.primary,
                    fontSize: 16,
                  ),
                ),
                Spacer(),
                Obx(() {
                  return Switch(
                    value: controller.newArrivalSwitch.value,
                    onChanged: (value) {
                      controller.newArrivalSwitch.value = value;
                    },
                    activeColor: AppColors.green,
                    activeTrackColor: Colors.grey.withOpacity(0.3),
                    inactiveThumbColor: AppColors.white,
                    inactiveTrackColor: Colors.grey.withOpacity(0.3),
                  );
                }),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 16, right: 16),
            child: Row(
              children: [
                Text(
                  "Delivery status changes",
                  style: TextStyle(
                    color: AppColors.primary,
                    fontSize: 16,
                  ),
                ),
                Spacer(),
                Obx(() {
                  return Switch(
                    value: controller.deliverySwitch.value,
                    onChanged: (value) {
                      controller.deliverySwitch.value = value;
                    },
                    activeColor: AppColors.green,
                    activeTrackColor: Colors.grey.withOpacity(0.3),
                    inactiveThumbColor: AppColors.white,
                    inactiveTrackColor: Colors.grey.withOpacity(0.3),
                  );
                }),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
