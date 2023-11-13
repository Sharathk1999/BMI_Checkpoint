import 'package:flutter/material.dart';
import 'package:get/get.dart';

class BMIController extends GetxController {
  RxString gender = "Male".obs;
  RxInt weight = 50.obs;
  RxInt age = 25.obs;
  RxDouble height = 150.0.obs;
  RxDouble heightInMeters = 0.0.obs;
  RxDouble bmi = 0.0.obs;
  RxString bmiStatus = ''.obs;
  Rx<Color> statusBMIColor = Colors.blue.obs;

  void genderChangeHandler(String gen) {
    gender.value = gen;
  }

  void calculateBMI() {
    heightInMeters.value = height / 100;

    bmi.value = weight / (heightInMeters * heightInMeters.value);
    statusBMI();
  }

  void statusBMI() {
    if (bmi.value < 18.5) {
      bmiStatus.value = 'Underweight 😥';
      
    }
    if (bmi.value > 18.5 && bmi.value < 24.9) {
      bmiStatus.value = 'Normal 😃';
      statusBMIColor.value = Colors.green;
    }
    if (bmi.value > 24.9 && bmi.value < 29.9) {
      bmiStatus.value = 'Overweight 😬';
            statusBMIColor.value = Colors.yellow;

    }
    if (bmi.value > 29.9 && bmi.value < 34.9) {
      bmiStatus.value = 'Obese 😨';
            statusBMIColor.value = Colors.redAccent;

    }
    if (bmi.value > 34.9) {
      bmiStatus.value = 'Extremely Obese 😳';
            statusBMIColor.value = Colors.red;

    }
  }
}
