import 'package:ecommerce_app/config/colorFile.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

showAppBar({text, bool isAction = false, actionIcon,bool isLeading = false}) {
  return AppBar(
    elevation: 00,
    leading: isLeading == true ? GestureDetector(
      onTap: () => Get.back(),
      child: Icon(
        Icons.chevron_left,
        color: AppColors.primary,
        size: 36,
      ),
    ) : SizedBox(
      height: 0.0,
      width: 0.0,
    ),
    centerTitle: true,
    title: Text(
      text ?? "",
      style: TextStyle(
          color: AppColors.primary, fontSize: 26, fontWeight: FontWeight.bold),
    ),
    actions: [
      isAction == true
          ? Padding(
              padding: const EdgeInsets.only(right: 8),
              child: Icon(
                actionIcon,
                color: AppColors.primary,
                size: 26,
              ),
            )
          : SizedBox(
              height: 0.0,
              width: 0.0,
            ),
    ],
  );
}
