import 'package:get/get.dart';
import 'card_settings_item_model.dart';

class CardSettingsModel {
  RxList<CardSettingsItemModel> cardSettingsItemList =
      RxList.filled(3, CardSettingsItemModel());
}
