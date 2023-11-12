import 'package:flutter/material.dart';

class ThemeChangeBtn extends StatelessWidget {
  const ThemeChangeBtn({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          // height: 55,
          // width: 100,
          padding: const EdgeInsets.symmetric(vertical: 1, horizontal: 8),
          decoration: BoxDecoration(
            color: Theme.of(context).colorScheme.primaryContainer,
            border: Border.all(
              width: 2,
              color: Colors.blueGrey,
            ),
            borderRadius: const BorderRadius.only(
              topRight: Radius.circular(16),
              bottomLeft: Radius.circular(16),
            ),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              IconButton(
                onPressed: () {},
                icon: const Icon(
                  Icons.lightbulb_rounded,
                  color: Colors.amber,
                ),
              ),
              IconButton(
                onPressed: () {},
                icon: const Icon(
                  Icons.dark_mode_rounded,
                  color: Colors.black26,
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
