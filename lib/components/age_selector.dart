import 'package:bmi_checkpoint/components/small_custom_btn.dart';
import 'package:bmi_checkpoint/controllers/bmi_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class AgeSelector extends StatelessWidget {
  const AgeSelector({super.key});

  @override
  Widget build(BuildContext context) {
    BMIController bmiController = Get.put(BMIController());
    return Container(
      height: 200,
      padding: const EdgeInsets.all(10),
      decoration: BoxDecoration(
        color: Theme.of(context).colorScheme.primaryContainer,
        borderRadius: BorderRadius.circular(
          12,
        ),
      ),
      child:  Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
       const   Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Age',
                style: TextStyle(
                  fontSize: 18,
                ),
              ),
            ],
          ),
           Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Obx(
                ()=> Text(
                  '${bmiController.age.value}',
                  style:const TextStyle(
                    fontSize: 48,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              SmallCustomBtn(onPressed: (){
                bmiController.age.value++;
              }, icon: Icons.add),
              SmallCustomBtn(onPressed: (){
                bmiController.age.value--;
                if (bmiController.age.value < 1) {
                  Get.closeAllSnackbars();
                  Get.showSnackbar(const GetSnackBar(title: 'Age Warning',message: 'Age must be above 1.',duration: Duration(seconds: 2),));
                  return;
                }
              }, icon: Icons.remove)
            ],
          )
        ],
      ),
    );
  }
}
