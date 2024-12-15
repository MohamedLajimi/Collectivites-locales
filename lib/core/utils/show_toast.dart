import 'package:flutter/material.dart';
import 'package:toastification/toastification.dart';

void showToast(
    {required String message,
    required ToastificationType type,
    required IconData icon}) {
  toastification.show(
      alignment: Alignment.topCenter,
      autoCloseDuration: const Duration(seconds: 2),
      type: type,
      style: ToastificationStyle.flatColored,
      showIcon: true,
      icon: Icon(icon),
      title: Text(
        message,
        style: TextStyle(
          fontSize: 12,
        ),
      ),
      showProgressBar: false);
}
