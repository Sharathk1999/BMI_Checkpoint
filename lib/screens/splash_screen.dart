import 'package:another_flutter_splash_screen/another_flutter_splash_screen.dart';
import 'package:bmi_checkpoint/screens/home_screen.dart';
import 'package:flutter/material.dart';
class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  Widget build(BuildContext context) {
    return FlutterSplashScreen.scale(
          gradient: const LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [
              Color.fromARGB(255, 250, 230, 223),
              Color.fromARGB(255, 255, 249, 248),
            ],
          ),
          childWidget: SizedBox(
            height: 80,
            child: ClipRRect(
              borderRadius: BorderRadius.circular(100),
              child: Image.asset('assets/images/BMI_Checkpoint_Bg.jpg',fit: BoxFit.cover,),
              
            ),
          ),
          duration: const Duration(milliseconds: 3500),
          animationDuration: const Duration(milliseconds: 3000),
          onAnimationEnd: () => debugPrint("On Scale End"),
          nextScreen: const HomeScreen(),
        );
  }
}