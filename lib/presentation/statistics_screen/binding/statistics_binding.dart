import '../controller/statistics_controller.dart';
import 'package:get/get.dart';

class StatisticsBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => StatisticsController());
  }
}
