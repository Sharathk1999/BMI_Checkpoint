import 'package:bmi_checkpoint/components/age_selector.dart';
import 'package:bmi_checkpoint/components/height_selector.dart';
import 'package:bmi_checkpoint/components/primary_custom_btn.dart';
import 'package:bmi_checkpoint/components/theme_change_btn.dart';
import 'package:bmi_checkpoint/components/weight_selector.dart';
import 'package:bmi_checkpoint/components/welcome_header.dart';
import 'package:bmi_checkpoint/controllers/bmi_controller.dart';
import 'package:bmi_checkpoint/screens/results_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    BMIController bmiController = Get.put(BMIController());
    return Scaffold(
      
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            
            children: [
              const ThemeChangeBtn(),
              const SizedBox(
                height: 15,
              ),
              const WelcomeHeader(),
              const SizedBox(
                height: 20,
              ),
              Row(
                children: [
                  PrimaryCustomBtn(
                    icon: Icons.male_rounded,
                    primaryCustomBtnName: 'Male',
                    onPressed: () {
                      bmiController.genderChangeHandler('Male');
                    },
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  PrimaryCustomBtn(
                    icon: Icons.female_rounded,
                    primaryCustomBtnName: 'Female',
                    onPressed: () {
                      bmiController.genderChangeHandler('Female');
                    },
                  )
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              const Expanded(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                     HeightSelector(),
                     SizedBox(
                      width: 20,
                    ),
                    Expanded(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          WeightSelector(),
                           SizedBox(
                            height: 25,
                          ),
                          AgeSelector()
                        ],
                      ),
                    )
                  ],
                ),
              ),
              const SizedBox(
                height: 25,
              ),
              SizedBox(
                height: 50,
                child: PrimaryCustomBtn(
                  icon: Icons.send_rounded,
                  primaryCustomBtnName: 'Continue',
                  onPressed: () {
                    bmiController.calculateBMI();
                    
                    Get.to(const ResultScreen(),transition: Transition.rightToLeft);
                  },
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
