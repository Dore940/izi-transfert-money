import 'package:get/get.dart';
import 'package:izi_transfert/data/models/selectionPopupModel/selection_popup_model.dart';
import 'statistics_item_model.dart';

class StatisticsModel {
  RxList<SelectionPopupModel> dropdownItemList = [
    SelectionPopupModel(
      id: 1,
      title: "test",
      isSelected: true,
    ),
    SelectionPopupModel(
      id: 2,
      title: "test1",
    ),
    SelectionPopupModel(
      id: 3,
      title: "test2",
    )
  ].obs;

  RxList<StatisticsItemModel> statisticsItemList =
      RxList.filled(3, StatisticsItemModel());
}
