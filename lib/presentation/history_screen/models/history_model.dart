import 'package:get/get.dart';
import 'listfire_item_model.dart';
import 'listvolume_item_model.dart';
import 'listvector_one_item_model.dart';

class HistoryModel {
  RxList<ListfireItemModel> listfireItemList =
      RxList.filled(4, ListfireItemModel());

  RxList<ListvolumeItemModel> listvolumeItemList =
      RxList.filled(3, ListvolumeItemModel());

  RxList<ListvectorOneItemModel> listvectorOneItemList =
      RxList.filled(2, ListvectorOneItemModel());
}
