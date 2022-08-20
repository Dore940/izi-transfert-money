import '../controller/mine_page_controller.dart';
import 'package:get/get.dart';

class MinePageBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => MinePageController());
  }
}
