import 'package:calculatrice/controllers/calculatrice.controller.dart';
import 'package:calculatrice/widgets/themes.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../utils/constantes.dart';
import 'customButton.dart';


class BodyContainer extends StatelessWidget {
  BodyContainer({Key? key}) : super(key: key);
  final CalculatriceController controller = Get.find<CalculatriceController>();

  @override
  Widget build(BuildContext context) {
    return Container(
      //padding: EdgeInsets.all(20),
      margin: EdgeInsets.only(top: 6),
      alignment: Alignment.center,
      height: Get.height * 0.69,
      width: Get.size.width,
      decoration: BoxDecoration(
        borderRadius: const BorderRadius.only(
            topLeft: Radius.circular(40),
            topRight: Radius.circular(40), ),
        color: Get.isDarkMode ? colorBlue : colorGrey,
      ),
      child: _keyboard(),
    );
  }

  Widget _keyboard() {
    return GridView.builder(
        physics: const NeverScrollableScrollPhysics(),
        padding: EdgeInsets.all(20),
        itemCount: signAndNumbers.length,
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 4,
          crossAxisSpacing: 10,
          mainAxisSpacing: 10,
        ),
        itemBuilder: (ctx, index) {
          return InkWell(
            borderRadius: BorderRadius.circular(20),
            onTap: () {
              controller.digitValidator(signAndNumbers[index].toString());
            },
            child: CustomButton(index: index),
          );
        },
      );

  }
}
