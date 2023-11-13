// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:bmi_checkpoint/controllers/bmi_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class PrimaryCustomBtn extends StatelessWidget {
  final IconData icon;
  final String primaryCustomBtnName;
  final VoidCallback onPressed;
  const PrimaryCustomBtn({
    Key? key,
    required this.icon,
    required this.primaryCustomBtnName,
    required this.onPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    BMIController bmiController = Get.put(BMIController());
    return Expanded(
      child: InkWell(
        onTap: onPressed,
        child: Obx(
          () => Container(
            height: 55,
            padding: const EdgeInsets.all(10),
            decoration: BoxDecoration(
              color: bmiController.gender.value == primaryCustomBtnName
                  ? Theme.of(context).colorScheme.primary
                  : Theme.of(context).colorScheme.primaryContainer,
              borderRadius: BorderRadius.circular(
                12,
              ),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(
                  icon,
                  color: bmiController.gender.value == primaryCustomBtnName
                      ? Theme.of(context).colorScheme.primaryContainer
                      : Theme.of(context).colorScheme.primary,
                ),
                const SizedBox(
                  width: 10,
                ),
                Text(
                  primaryCustomBtnName,
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    color: bmiController.gender.value == primaryCustomBtnName
                        ? Theme.of(context).colorScheme.primaryContainer
                        : Theme.of(context).colorScheme.primary,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
