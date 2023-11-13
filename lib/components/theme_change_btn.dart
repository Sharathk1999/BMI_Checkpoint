import 'package:bmi_checkpoint/controllers/theme_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ThemeChangeBtn extends StatelessWidget {
  const ThemeChangeBtn({super.key});

  @override
  Widget build(BuildContext context) {
    ThemeController themeController = Get.put(ThemeController());
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          // height: 55,
          // width: 100,
          padding: const EdgeInsets.symmetric(vertical: 5, horizontal: 8),
          decoration: BoxDecoration(
            color: Theme.of(context).colorScheme.primaryContainer,
            border: Border.all(
              width: 2,
              color:themeController.isDark.value ? Colors.blueGrey : Theme.of(context).colorScheme.primary,
            ),
            borderRadius: const BorderRadius.only(
              topRight: Radius.circular(16),
              bottomLeft: Radius.circular(16),
            ),
          ),
          child: InkWell(
            onTap: () {
              themeController.changeTheme();
            },
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Icon(
                  Icons.lightbulb_rounded,
                  color:
                      themeController.isDark.value ? Colors.black12 : Theme.of(context).colorScheme.primary,
                ),
                const SizedBox(
                  width: 10,
                ),
                Icon(
                  Icons.dark_mode_rounded,
                  color:
                      themeController.isDark.value ? Colors.blueGrey : Colors.grey,
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
