import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/purchase_add_screen_controller.dart';

class PurchaseAddScreenView extends GetView<PurchaseAddScreenController> {
  const PurchaseAddScreenView({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('PurchaseAddScreenView'),
        centerTitle: true,
      ),
      body: const Center(
        child: Text(
          'PurchaseAddScreenView is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
