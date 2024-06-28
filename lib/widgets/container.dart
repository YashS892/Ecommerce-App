import 'package:ecommerce_app/config/colorFile.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

showContainer(
    {color, text,text1, height,margin, width,textFontSize, radiusValue,text1FontSize,padding, borderColor, borderWidth,bool isDoubleText = false}) {
  return Container(
    margin: EdgeInsets.all(margin ?? 0.0),
    height: height ?? Get.height,
    width: width ?? Get.width,
    padding: EdgeInsets.all(padding ?? 0.0),
    decoration: BoxDecoration(
      border: Border.all(
          color: borderColor ?? Colors.transparent, width: borderWidth ?? 0.0),
      borderRadius: BorderRadius.circular(radiusValue ?? 0.0),
      color: color ?? AppColors.mainColor,
    ),
    child: isDoubleText == true ? Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Text(
          text,
          style: TextStyle(
            color: AppColors.white,
            fontSize: textFontSize ?? 24,
            fontWeight: FontWeight.bold,
            fontFamily: "Regular",
          ),
        ),
        Text(
          text1 ??"",
          style: TextStyle(
            color: AppColors.white,
            fontSize: text1FontSize ?? 16,
            fontWeight: FontWeight.bold,
            fontFamily: "Regular",
          ),
        ),
      ],
    ):  Center(
      child: Text(
        text,
        style: TextStyle(
          color: AppColors.white,
          fontSize: 24,
          fontWeight: FontWeight.bold,
          fontFamily: "Regular",
        ),
      ),
    ),
  );
}
