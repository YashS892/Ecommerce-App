import 'package:flutter/material.dart';

class SnackBarWidget {
  static void showSuccessSnackBar({BuildContext? context, String? message}) {
    ScaffoldMessenger.of(context!).showSnackBar(
      SnackBar(
        padding: const EdgeInsets.all(16),
        content: Text(message!),
        backgroundColor: Colors.green,
      ),
    );
  }

  static void showErrorSnackBar({BuildContext? context, String? message}) {
    ScaffoldMessenger.of(context!).showSnackBar(
      SnackBar(
        padding: const EdgeInsets.all(16),
        content: Text(message!),
        backgroundColor: Colors.red,
      ),
    );
  }
}
