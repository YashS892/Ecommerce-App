import 'package:ecommerce_app/config/colorFile.dart';
import 'package:ecommerce_app/controller/bottomController/profileController.dart';
import 'package:ecommerce_app/widgets/appBar.dart';
import 'package:ecommerce_app/widgets/container.dart';
import 'package:ecommerce_app/widgets/textField.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class EditAddress extends StatefulWidget {
  const EditAddress({super.key});

  @override
  State<EditAddress> createState() => _EditAddressState();
}

class _EditAddressState extends State<EditAddress> {
  final controller = Get.put(ProfileController());

  setData() {
    controller.updateNameControllerForShipping.value.text =
        Get.arguments["name"].toString();
    controller.updateAddressControllerForShipping.value.text =
        Get.arguments["address"].toString();
    controller.updateCityControllerForShipping.value.text =
        Get.arguments["city"].toString();
    controller.updateStateControllerForShipping.value.text =
        Get.arguments["state"].toString();
    controller.updateZipCodeControllerForShipping.value.text =
        Get.arguments["zip"].toString();
    controller.updateCountryControllerForShipping.value.text =
        Get.arguments["country"].toString();
  }

  @override
  void initState() {
    // TODO: implement initState
    setData();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: showAppBar(
        text: "Edit Address",
        isLeading: true,
      ),
      body: Obx(() {
        return ListView(
          children: [
            textField(
              labelText: "Full Name",
              cController: controller.updateNameControllerForShipping.value,
            ),
            textField(
              labelText: "Address",
              cController: controller.updateAddressControllerForShipping.value,
            ),
            textField(
              labelText: "City",
              cController: controller.updateCityControllerForShipping.value,
            ),
            textField(
              labelText: "State/Province/Region",
              cController: controller.updateStateControllerForShipping.value,
            ),
            textField(
              labelText: "Zip Code(Postal Code)",
              cController: controller.updateZipCodeControllerForShipping.value,
            ),
            textField(
              labelText: "Country",
              cController: controller.updateCountryControllerForShipping.value,
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
        );
      }),
    );
  }
}
