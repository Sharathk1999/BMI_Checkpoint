import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_sliders/sliders.dart';

class HeightSelector extends StatelessWidget {
  const HeightSelector({super.key});

  @override
  Widget build(BuildContext context) {
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
              child: SfSlider.vertical(
                  min: 100,
                  max: 500,
                  value: 300,
                  interval: 50,
                  showTicks: true,
                  showLabels: true,
                  enableTooltip: true,
                  minorTicksPerInterval: 1,
                  onChanged: (dynamic value) {
                  
                  },
                ),
            ),
  
          ],
        ),
      ),
    );
  }
}
