import 'package:flutter/material.dart';

class WelcomeHeader extends StatelessWidget {
  const WelcomeHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 300,
      alignment: Alignment.center,
      padding: const EdgeInsets.all(14),
      decoration: BoxDecoration(
        color: Theme.of(context).colorScheme.primaryContainer,
        border: Border.all(width: 2,color: Colors.blueGrey),
        borderRadius: const BorderRadius.only(
          topRight: Radius.circular(16),
          bottomLeft: Radius.circular(16),
          
        ),
      ),
      child: Column(
        children: [
          Row(
            children: [ 
              Text(
                'Welcome to BMI Checkpoint🤗',
                style: TextStyle(
                    color: Theme.of(context).colorScheme.onSecondaryContainer),
              ),
            ],
          ),
          const Row(
            children: [
              Text(
                'It\'s a BMI Calculator  ',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 25,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
