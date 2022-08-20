import '/core/app_export.dart';
import 'package:izi_transfert/presentation/national_bank_screen/models/national_bank_model.dart';

class NationalBankController extends GetxController {
  Rx<NationalBankModel> nationalBankModelObj = NationalBankModel().obs;

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }
}
