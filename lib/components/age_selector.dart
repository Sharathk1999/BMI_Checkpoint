import 'package:bmi_checkpoint/components/small_custom_btn.dart';
import 'package:flutter/material.dart';

class AgeSelector extends StatelessWidget {
  const AgeSelector({super.key});

  @override
  Widget build(BuildContext context) {
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
         const  Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                '27',
                style: TextStyle(
                  fontSize: 48,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              SmallCustomBtn(onPressed: (){}, icon: Icons.add),
              SmallCustomBtn(onPressed: (){}, icon: Icons.remove)
            ],
          )
        ],
      ),
    );
  }
}
