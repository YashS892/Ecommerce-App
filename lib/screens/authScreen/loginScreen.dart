import 'package:ecommerce_app/bottomScreen.dart';
import 'package:ecommerce_app/config/colorFile.dart';
import 'package:ecommerce_app/config/ImageFile.dart';
import 'package:ecommerce_app/controller/AuthController.dart';
import 'package:ecommerce_app/widgets/appBar.dart';
import 'package:ecommerce_app/widgets/container.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../widgets/snack_bar.dart';
import '../../widgets/textField.dart';

class LoginPage extends StatelessWidget {
  LoginPage({super.key});

  final controller = Get.put(AuthController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.backgroundColor,
      appBar: showAppBar(isLeading: true),
      body: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Text(
              "Login",
              style: TextStyle(
                color: AppColors.primary,
                fontSize: 36,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          Column(
            children: [
              textField(
                cController: controller.emailControllerLogin.value,
                labelText: "E-mail",
              ),
              textField(
                cController: controller.passwordControllerLogin.value,
                labelText: "Password",
              ),
              Padding(
                padding: const EdgeInsets.only(right: 8, bottom: 16),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Text(
                      "Forget password?",
                      style: TextStyle(
                        color: AppColors.primary,
                        fontSize: 18,
                      ),
                    ),
                    Icon(
                      Icons.arrow_right_alt,
                      color: AppColors.mainColor,
                      size: 30,
                    )
                  ],
                ),
              ),
              GestureDetector(
                onTap: () {
                  if (controller.emailControllerLogin.value.text.isEmpty) {
                    SnackBarWidget.showErrorSnackBar(
                        context: context, message: "Please Enter E-mail");
                  } else if (!RegExp(r'\S+@\S+\.\S+')
                      .hasMatch(controller.emailControllerLogin.value.text)) {
                    SnackBarWidget.showErrorSnackBar(
                        context: context, message: "Please Enter Valid E-mail");
                  } else if (controller
                      .passwordControllerLogin.value.text.isEmpty) {
                    SnackBarWidget.showErrorSnackBar(
                        context: context, message: "Please Enter Password");
                  } else if (controller
                          .passwordControllerLogin.value.text.length <
                      6) {
                    SnackBarWidget.showErrorSnackBar(
                        context: context,
                        message: "Please Enter Valid Password");
                  } else {
                    SnackBarWidget.showSuccessSnackBar(
                        context: context, message: "Login Successfully");
                    Get.offAll(BottomScreen());
                  }
                },
                child: showContainer(
                  color: AppColors.containerColor,
                  margin: 16.0,
                  height: 60.0,
                  text: "SIGN UP",
                  isDoubleText: false,
                  radiusValue: 24.0,
                ),
              ),
            ],
          ),
          SizedBox(
            height: Get.height / 8,
          ),
          Padding(
            padding: const EdgeInsets.only(bottom: 36),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Padding(
                  padding: const EdgeInsets.only(bottom: 24, top: 36),
                  child: Text(
                    "Or sign up with social account",
                    style: TextStyle(color: AppColors.primary, fontSize: 18),
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      width: 120,
                      height: 80,
                      decoration: BoxDecoration(
                        color: AppColors.white,
                        boxShadow: [
                          BoxShadow(
                            color: AppColors.grey,
                            spreadRadius: 0,
                            blurRadius: 2,
                          )
                        ],
                        borderRadius: BorderRadius.circular(30),
                      ),
                      child: Center(
                        child: Image.asset(
                          AppImage.googleLogo,
                          height: 50,
                          width: 50,
                        ),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(left: 16.0),
                      width: 120,
                      height: 80,
                      decoration: BoxDecoration(
                        color: AppColors.white,
                        boxShadow: [
                          BoxShadow(
                              color: AppColors.grey,
                              spreadRadius: 0,
                              blurRadius: 2)
                        ],
                        borderRadius: BorderRadius.circular(30),
                      ),
                      child: Center(
                        child: Image.asset(
                          AppImage.facebookLogo,
                          height: 50,
                          width: 50,
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
