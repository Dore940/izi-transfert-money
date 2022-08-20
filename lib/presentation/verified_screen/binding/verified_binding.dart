import '../controller/verified_controller.dart';
import 'package:get/get.dart';

class VerifiedBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => VerifiedController());
  }
}
