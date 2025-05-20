import 'package:get/get.dart';
import 'package:flutter/material.dart';

class MessageController extends GetxController {
  void showMessage({required String message, required MessageType type}) {
    Color backgroundColor;
    IconData icon;
    // Set properties based on the message type
    switch (type) {
      case MessageType.success:
        backgroundColor = Colors.green;
        icon = Icons.check_circle;
        break;
      case MessageType.error:
        backgroundColor = Colors.red;
        icon = Icons.error;
        break;
      case MessageType.alert:
        backgroundColor = Colors.red;
        icon = Icons.error;
        break;
    }

    // Show the snackbar
    Get.snackbar(
      type == MessageType.alert ? 'Alert'.tr : (type == MessageType.success ? 'Success'.tr : 'Error'.tr),
      //type == MessageType.alert ? 'Alert': MessageType.success ? 'Success' : 'Error',
      message,
      backgroundColor: backgroundColor,
      colorText: Colors.white,
      icon: Icon(icon, color: Colors.white),
      snackPosition: SnackPosition.BOTTOM,
      duration: Duration(seconds: 3),
    );
  }
}

enum MessageType { success, error,alert }
