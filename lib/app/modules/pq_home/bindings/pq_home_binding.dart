import 'package:get/get.dart';

import '../controllers/pq_home_controller.dart';

class PqHomeBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<PqHomeController>(
      () => PqHomeController(),
    );
  }
}
