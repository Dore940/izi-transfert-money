import '../controller/date_of_birth_controller.dart';
import 'package:get/get.dart';

class DateOfBirthBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => DateOfBirthController());
  }
}
