import '../controller/splash_with_button_controller.dart';
import 'package:get/get.dart';

class SplashWithButtonBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => SplashWithButtonController());
  }
}
