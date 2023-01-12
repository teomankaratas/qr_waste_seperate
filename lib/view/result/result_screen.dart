import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../app/constants/app_constants.dart';
import '../../model/qr_model.dart';
import '../../controller/qr_controller.dart';
import '../widgets/bold_app_text.dart';

import '../widgets/app_sized_box.dart';
import '../widgets/app_text.dart';


class ResultScreen extends StatelessWidget {
  final QrModel qrModel;

  const ResultScreen(
      {super.key, required this.qrModel});

  @override
  Widget build(BuildContext context) {
    final qrController = Get.find<QrController>();
    return Scaffold(
      backgroundColor: AppConstants.bgColor,
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {
            qrController.closeScreen();
            Navigator.pop(context);
          },
          icon: const Icon(Icons.arrow_back_ios_new),
          color: Colors.black87,
        ),
        centerTitle: true,
        title: const BoldAppText(text: "QR ATIK AYIRMA",)
      ),
      body: Container(
        alignment: Alignment.center,
        padding: const EdgeInsets.all(12.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const BoldAppText(text: "Tarama sonucu:"),
            const AppSizedBox(),
            AppText(text: qrModel.desc!),
            const AppSizedBox(),
          ],
        ),
      ),
    );
  }
}

