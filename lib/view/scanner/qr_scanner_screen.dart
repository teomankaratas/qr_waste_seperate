import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mobile_scanner/mobile_scanner.dart';
import '../../app/constants/app_constants.dart';
import '../../controller/qr_controller.dart';

import '../widgets/app_sized_box.dart';
import '../widgets/app_text.dart';
import '../widgets/bold_app_text.dart';

import '../widgets/qr_overlay.dart';

class QRscannerScreen extends StatelessWidget {
  const QRscannerScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final qrController = Get.put(QrController());

    return Scaffold(
      backgroundColor: AppConstants.bgColor,
      appBar: AppBar(
        centerTitle: true,
        title: const BoldAppText(text: "QR ATIK AYIRMA"),
      ),
      body: Container(
        width: double.infinity,
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
            Expanded(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: const [
                  BoldAppText(text: "QR kodunu alan içerisinden okutunuz."),
                  AppSizedBox(),
                  AppText(text: "Tarama otomatik olarak başlayacaktır."),
                ],
              ),
            ),
            Expanded(
              flex: 3,
              child: Stack(
                children: [
                  MobileScanner(
                    fit: BoxFit.contain,
                    allowDuplicates: true,
                    onDetect: (barcode, args) {
                      qrController.onDetect(barcode, args);
                    },
                  ),
                  const QRScannerOverlay(
                    overlayColour: AppConstants.bgColor,
                  )
                ],
              ),
            ),
            const Expanded(
              flex: 3,
              child: AppSizedBox(),
            )
          ],
        ),
      ),
    );
  }
}
