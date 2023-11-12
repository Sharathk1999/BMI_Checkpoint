import 'package:bmi_checkpoint/components/age_selector.dart';
import 'package:bmi_checkpoint/components/height_selector.dart';
import 'package:bmi_checkpoint/components/primary_custom_btn.dart';
import 'package:bmi_checkpoint/components/theme_change_btn.dart';
import 'package:bmi_checkpoint/components/weight_selector.dart';
import 'package:bmi_checkpoint/components/welcome_header.dart';
import 'package:bmi_checkpoint/config/colors.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    // ThemeController themeController = Get.put(ThemeController());
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: lightBgColor,
        title: const Text(
          'BMI Checkpoint',
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
      ),
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
                    onPressed: () {},
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  PrimaryCustomBtn(
                    icon: Icons.female_rounded,
                    primaryCustomBtnName: 'Female',
                    onPressed: () {},
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
                    const HeightSelector(),
                    const SizedBox(
                      width: 20,
                    ),
                    Expanded(
                      child: SingleChildScrollView(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            WeightSelector(),
                            const SizedBox(
                              height: 25,
                            ),
                            AgeSelector()
                          ],
                        ),
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
                  onPressed: () {},
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
