import 'package:ecommerce_app/config/colorFile.dart';
import 'package:ecommerce_app/controller/bottomController/profileController.dart';
import 'package:ecommerce_app/widgets/appBar.dart';
import 'package:ecommerce_app/widgets/container.dart';
import 'package:ecommerce_app/widgets/textField.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class AddShippingAddress extends StatelessWidget {
  AddShippingAddress({super.key});

  final controller = Get.put(ProfileController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: showAppBar(
        text: "Shipping Addresses",
        isLeading: true,
      ),
      body: ListView(
        children: [
          textField(
            labelText: "Full Name",
            cController: controller.nameControllerForShipping.value,
          ),
          textField(
            labelText: "Address",
            cController: controller.addressControllerForShipping.value,
          ),
          textField(
            labelText: "City",
            cController: controller.cityControllerForShipping.value,
          ),
          textField(
            labelText: "State/Province/Region",
            cController: controller.stateControllerForShipping.value,
          ),
          textField(
            labelText: "Zip Code(Postal Code)",
            cController: controller.zipCodeControllerForShipping.value,
          ),
          textField(
            labelText: "Country",
            cController: controller.countryControllerForShipping.value,
          ),
          InkWell(
            onTap: () {
              Get.back();
            },
            child: showContainer(
                color: AppColors.mainColor,
                text: "SAVE ADDRESS",
                height: 70.0,
                radiusValue: 16.0,
                margin: 24.0),
          ),
        ],
      ),
    );
  }
}
