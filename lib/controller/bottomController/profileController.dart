import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_rx/get_rx.dart';

class ProfileController extends GetxController {
  RxList profileOption = [
    {
      "mainText": "My Order",
      "childText": "Already have 12 order",
    },
    {
      "mainText": "Shipping addresses",
      "childText": "3 addresses",
    },
    {
      "mainText": "Payment methods",
      "childText": "Visa **34",
    },
    {
      "mainText": "Promocodes",
      "childText": "You have special promocodes",
    },
    {
      "mainText": "My reviews",
      "childText": "Reviews for 4 items",
    },
    {
      "mainText": "Settings",
      "childText": "Notification, password",
    },
  ].obs;
  final updateName = TextEditingController().obs;
  final updatePassword = TextEditingController().obs;
  final datePick = TextEditingController().obs;
  final updatePasswordValue = TextEditingController().obs;
  final nameControllerForShipping = TextEditingController().obs;
  final addressControllerForShipping = TextEditingController().obs;
  final cityControllerForShipping = TextEditingController().obs;
  final stateControllerForShipping = TextEditingController().obs;
  final zipCodeControllerForShipping = TextEditingController().obs;
  final countryControllerForShipping = TextEditingController().obs;
  final updateNameControllerForShipping = TextEditingController().obs;
  final updateAddressControllerForShipping = TextEditingController().obs;
  final updateCityControllerForShipping = TextEditingController().obs;
  final updateStateControllerForShipping = TextEditingController().obs;
  final updateZipCodeControllerForShipping = TextEditingController().obs;
  final updateCountryControllerForShipping = TextEditingController().obs;
  RxBool salesSwitch = false.obs;
  RxBool newArrivalSwitch = false.obs;
  RxBool deliverySwitch = false.obs;
  RxBool isCheckShipping = false.obs;


  Future selectDate({BuildContext? context}) async {
    DateTime? picked = await showDatePicker(
      initialDate: DateTime.now(),
      context: context!,
      firstDate: DateTime(2000),
      lastDate: DateTime(2100),
    );
    if (picked != null) {
      datePick.value.text = picked.toString().split(" ")[0];
    }
  }
}
