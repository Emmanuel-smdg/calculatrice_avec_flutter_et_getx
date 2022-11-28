import 'package:calculatrice/controllers/calculatrice.controller.dart';
import 'package:calculatrice/utils/themes.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:calculatrice/widgets/themes.dart';

import '../widgets/bodyContainer.dart';

class Home extends StatelessWidget {
  Home({Key? key}) : super(key: key);
  final CalculatriceController controller = Get.put(CalculatriceController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: context.theme.backgroundColor,
      appBar: AppBar(title: const Text('Calculatrice'),
        actions: [
          IconButton(
            icon: const Icon(Icons.change_circle_rounded),
            onPressed: () {
              ThemeService().switchTheme();
            },
          ),
          // add more IconButton
        ],),
      body: SizedBox(
        width: Get.width,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          //mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Padding(
                padding: const EdgeInsets.fromLTRB(5, 15, 5, 5),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Obx(() {
                      final userInput = controller.input.value;
                      final result = controller.result.value;
                      return Column(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          Text(userInput, style: kTextStyle(25)),
                          Text(result, style: kTextStyle(40)),
                        ],
                      );
                    })
                  ],
                ),
            ),
            const Divider(
            ),
            BodyContainer(),

          ],
        ),
      ),
    );
  }
}
