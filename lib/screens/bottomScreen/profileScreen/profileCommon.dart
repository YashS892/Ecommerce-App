import 'package:ecommerce_app/config/colorFile.dart';
import 'package:ecommerce_app/screens/bottomScreen/profileScreen/profileDeepScreen/myOrder.dart';
import 'package:ecommerce_app/screens/bottomScreen/profileScreen/profileDeepScreen/payment.dart';
import 'package:ecommerce_app/screens/bottomScreen/profileScreen/profileDeepScreen/promo.dart';
import 'package:ecommerce_app/screens/bottomScreen/profileScreen/profileDeepScreen/review.dart';
import 'package:ecommerce_app/screens/bottomScreen/profileScreen/profileDeepScreen/setting.dart';
import 'package:ecommerce_app/screens/bottomScreen/profileScreen/profileDeepScreen/shipping.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ProfileCommon extends StatelessWidget {
  ProfileCommon({super.key});

  var index = Get.arguments["profileIndex"];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.backgroundColor,
      body: index == 0
          ? MyOrder()
          : index == 1
              ? ShippingAddress()
              : index == 2
                  ? PaymentMethod()
                  : index == 3
                      ? Promocode()
                      : index == 4
                          ? ReviewPage()
                          : Settings(),
    );
  }
}
