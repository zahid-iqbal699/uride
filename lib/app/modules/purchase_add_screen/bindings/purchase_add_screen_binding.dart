import 'package:get/get.dart';

import '../controllers/purchase_add_screen_controller.dart';

class PurchaseAddScreenBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<PurchaseAddScreenController>(
      () => PurchaseAddScreenController(),
    );
  }
}
