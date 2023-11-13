import 'package:bmi_checkpoint/components/small_custom_btn.dart';
import 'package:bmi_checkpoint/controllers/bmi_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class WeightSelector extends StatelessWidget {
  const WeightSelector({super.key});

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
                'Weight(Kg)',
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
                  '${bmiController.weight.value}',
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
                bmiController.weight.value++;
              }, icon: Icons.add),
              SmallCustomBtn(onPressed: (){
                if (bmiController.weight.value < 1) {
                  Get.closeAllSnackbars();
                  Get.showSnackbar(const GetSnackBar(title: 'Weight Warning',message: 'weight is below 1.',duration: Duration(seconds: 2),));
                  return;
                }
                bmiController.weight.value--;
              }, icon: Icons.remove)
            ],
          )
        ],
      ),
    );
  }
}
