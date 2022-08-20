import '../controller/national_bank_controller.dart';
import 'package:get/get.dart';

class NationalBankBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => NationalBankController());
  }
}
