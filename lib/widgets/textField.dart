import 'package:flutter/material.dart';

import '../config/colorFile.dart';

Container textField({
  cController,
  labelText,
}) {
  return Container(
    margin: EdgeInsets.all(16),
    decoration: BoxDecoration(
      color: AppColors.white,
      borderRadius: BorderRadius.circular(16),
    ),
    child: TextField(
      controller: cController,
      style: TextStyle(
        color: AppColors.primary,
        fontSize: 18,
        fontWeight: FontWeight.w500,
      ),
      decoration: InputDecoration(
        filled: true,
        labelStyle: TextStyle(
          color: AppColors.grey,
          fontSize: 20,
        ),
        fillColor: AppColors.white,
        label: Text(
          labelText,
          style: TextStyle(
            color: AppColors.grey,
          ),
        ),
        border: OutlineInputBorder(
          borderSide: BorderSide.none,
        ),
      ),
    ),
  );
}
