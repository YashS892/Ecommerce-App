import 'package:flutter/material.dart';
import 'package:get/get.dart';

class AuthController extends GetxController {
  // register
  final nameController = TextEditingController().obs;
  final emailController = TextEditingController().obs;
  final passwordController = TextEditingController().obs;
  // login
  final emailControllerLogin = TextEditingController().obs;
  final passwordControllerLogin = TextEditingController().obs;

}
