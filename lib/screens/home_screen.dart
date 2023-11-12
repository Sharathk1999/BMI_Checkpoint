import 'package:bmi_checkpoint/components/primary_custom_btn.dart';
import 'package:bmi_checkpoint/components/theme_change_btn.dart';
import 'package:bmi_checkpoint/components/welcome_header.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    // ThemeController themeController = Get.put(ThemeController());
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
              WelcomeHeader(),
              const SizedBox(
                height: 10,
              ),
              Row(
                children: [
                  PrimaryCustomBtn(
                    icon: Icons.male_rounded,
                    primaryCustomBtnName: 'Male',
                  ),
                  const SizedBox(
                width: 10,
              ),
                   PrimaryCustomBtn(
                    icon: Icons.female_rounded,
                    primaryCustomBtnName: 'Female',
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
