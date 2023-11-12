import 'package:flutter/material.dart';

class PrimaryCustomBtn extends StatelessWidget {
  final IconData icon;
  final String primaryCustomBtnName;
  const PrimaryCustomBtn({
    super.key,
    required this.icon,
    required this.primaryCustomBtnName,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        height: 55,
        padding: const EdgeInsets.all(10),
        decoration: BoxDecoration(
            color: Theme.of(context).colorScheme.primary,
            borderRadius: BorderRadius.circular(12)),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              icon,
              color: Theme.of(context).colorScheme.background,
            ),
            const SizedBox(
              width: 10,
            ),
            Text(
              primaryCustomBtnName,
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
                color: Theme.of(context).colorScheme.background,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
