import 'package:bmi_checkpoint/controllers/bmi_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:syncfusion_flutter_sliders/sliders.dart';

class HeightSelector extends StatelessWidget {
  const HeightSelector({super.key});

  @override
  Widget build(BuildContext context) {
    BMIController bmiController = Get.put(BMIController());
    return Expanded(
      child: Container(
        decoration: BoxDecoration(
            color: Theme.of(context).colorScheme.primaryContainer,
            borderRadius: BorderRadius.circular(12)),
        child:  Column(
          children: [
         const   Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Height (in CM)',
                  style: TextStyle(
                    fontSize: 18,
                  ),
                ),
              ],
            ),
            Expanded(
              child: Obx(
                ()=> SfSlider.vertical(
                    min: 50,
                    max: 250,
                    value: bmiController.height.value,
                    interval: 25,
                    showTicks: true,
                    showLabels: true,
                    enableTooltip: true,
                    minorTicksPerInterval: 1,
                    onChanged: (dynamic val) {
                      bmiController.height.value=val;
                    },
                  ),
              ),
            ),
  
          ],
        ),
      ),
    );
  }
}
