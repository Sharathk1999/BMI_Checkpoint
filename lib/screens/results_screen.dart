import 'package:bmi_checkpoint/components/primary_custom_btn.dart';
import 'package:bmi_checkpoint/controllers/bmi_controller.dart';
import 'package:bmi_checkpoint/controllers/theme_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:percent_indicator/percent_indicator.dart';

class ResultScreen extends StatelessWidget {
  const ResultScreen({super.key});

  @override
  Widget build(BuildContext context) {
    BMIController bmiController = Get.put(BMIController());
    ThemeController themeController = Get.put(ThemeController());
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: SafeArea(
          child: Column(
            children: [
              Row(
                children: [
                  IconButton(
                    onPressed: () {
                      Get.back();
                    },
                    icon: const Icon(
                      Icons.arrow_back_ios_new_rounded,
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 15,
              ),
              const Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Here is your BMI Score 📝',
                    style: TextStyle(
                      fontSize: 22,
                      fontWeight: FontWeight.bold,
                    ),
                  )
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              Container(
                width: MediaQuery.of(context).size.width * .9,
                padding: const EdgeInsets.all(20),
                decoration: BoxDecoration(
                  color: Theme.of(context).colorScheme.primaryContainer,
                  border: Border.all(width: 1),
                  borderRadius: const BorderRadius.only(
                    topRight: Radius.circular(50),
                    bottomLeft: Radius.circular(50),
                    bottomRight: Radius.circular(50),
                  ),
                ),
                child: Obx(
                  () => CircularPercentIndicator(
                    animationDuration: 1000,
                    radius: 125.0,
                    lineWidth: 15.0,
                    animation: true,
                    percent: bmiController.bmi.value / 100.0,
                    center: Text(
                      '${bmiController.bmi.value.toStringAsFixed(1)} %',
                      style: const TextStyle(
                          fontWeight: FontWeight.bold, fontSize: 30),
                    ),
                    footer:  Padding(
                      padding:const EdgeInsets.symmetric(vertical: 10),
                      child: Text(
                        bmiController.bmiStatus.value,
                        style:const TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 25),
                      ),
                    ),
                    circularStrokeCap: CircularStrokeCap.round,
                    progressColor: bmiController.statusBMIColor.value,
                    backgroundColor:themeController.isDark.value ? Colors.black12: Colors.black12,
                  ),
                ),
              ),
              const SizedBox(
                height: 15,
              ),
              Expanded(
                child: Container(
                  decoration: BoxDecoration(
                    color: Theme.of(context).colorScheme.primaryContainer,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  padding: const EdgeInsets.all(10),
                  child: Container(
                padding:const EdgeInsets.all(16.0),
                child: SingleChildScrollView(
                  child: RichText(
                    text: TextSpan(
                      style: TextStyle(color: themeController.isDark.value ? Colors.white:Colors.black, fontSize: 16.0),
                      children:const <TextSpan>[
                        TextSpan(
                          text: "Under 18.5 (Underweight):\n",
                          style: TextStyle(fontWeight: FontWeight.bold,color: Colors.blue),
                        ),
                        TextSpan(text: 
                          "Ensure you're getting adequate nutrition.\n"
                          "Consider speaking to a healthcare professional for guidance on gaining weight in a healthy manner.\n\n",
                        ),
                        TextSpan(
                          text: "18.5 - 24.9 (Normal Weight):\n",
                          style: TextStyle(fontWeight: FontWeight.bold,color: Colors.green),
                        ),
                        TextSpan(text: 
                          "Maintain a balanced diet and regular exercise routine.\n"
                          "Focus on maintaining your current weight by healthy lifestyle habits.\n\n",
                        ),
                        TextSpan(
                          text: "25 - 29.9 (Overweight):\n",
                          style: TextStyle(fontWeight: FontWeight.bold,color: Colors.redAccent),
                        ),
                        TextSpan(text: 
                          "Evaluate your diet and exercise habits. Consider making adjustments to support weight loss if needed.\n"
                          "Increase physical activity and focus on healthier food choices.\n\n",
                        ),
                        TextSpan(
                          text: "30 and Above (Obese):\n",
                          style: TextStyle(fontWeight: FontWeight.bold,color: Colors.red),
                        ),
                        TextSpan(text: 
                          "Seek guidance from a healthcare professional for a weight management plan.\n"
                          "Prioritize healthy eating habits and regular exercise to reduce health risks associated with obesity.\n\n",
                        ),
                        TextSpan(text: 
                          "Remember, while BMI is a useful indicator, it doesn't account for factors like muscle mass, so it might not always accurately reflect an individual's health. Consulting with a healthcare provider can provide a more comprehensive understanding of your health status.",
                        ),
                      ],
                    ),
                  ),
                ),
              )
              ,
                ),
              ),
              const SizedBox(height: 20),
              SizedBox(
                width: double.infinity,
                child: PrimaryCustomBtn(
                  onPressed: () {
                    Get.back();
                  },
                  primaryCustomBtnName: "Back to Checkpoint",
                  icon: Icons.arrow_back_ios_new_outlined,
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
