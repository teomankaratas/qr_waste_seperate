import 'dart:convert';
import 'package:get/get.dart';
import 'package:mobile_scanner/mobile_scanner.dart';
import '../app/constants/app_constants.dart';

import '../model/qr_model.dart';
import '../view/result/result_screen.dart';

class QrController extends GetxController {
  final isScanCompleted = false.obs;

  void closeScreen() {
    isScanCompleted.value = false;
  }

  void onDetect(Barcode barcode, MobileScannerArguments? args) async {
    if (!isScanCompleted.value) {
      scan(barcode, args);
    }
  }

  void scan(Barcode barcode, MobileScannerArguments? args) {
    String code = barcode.rawValue ?? ".";

    try {
      QrModel qrModel = QrModel.fromJson(json.decode(code));
      if (qrModel.verificationCode == AppConstants.verificationCode) {
        isScanCompleted.value = true;
        Get.to(() => ResultScreen(qrModel: qrModel));
      }
    } catch (e) {
    if (SnackbarController.isSnackbarBeingShown) {
      return;
    }else{
      Get.snackbar(
        "HATA",
        "QR kod tanımlanamadı.",
      );
    }
    }
  }
}
