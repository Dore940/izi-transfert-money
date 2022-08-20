import '/core/app_export.dart';
import 'package:izi_transfert/presentation/statistics_screen/models/statistics_model.dart';

class StatisticsController extends GetxController {
  Rx<StatisticsModel> statisticsModelObj = StatisticsModel().obs;

  SelectionPopupModel? selectedDropDownValue;

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }

  onSelected(dynamic value) {
    selectedDropDownValue = value as SelectionPopupModel;
    statisticsModelObj.value.dropdownItemList.forEach((element) {
      element.isSelected = false;
      if (element.id == value.id) {
        element.isSelected = true;
      }
    });
    statisticsModelObj.value.dropdownItemList.refresh();
  }
}
