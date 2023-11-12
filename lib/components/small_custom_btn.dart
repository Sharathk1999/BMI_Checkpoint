import 'package:flutter/material.dart';

class SmallCustomBtn extends StatelessWidget {
  final VoidCallback onPressed;
  final IconData icon;
  const SmallCustomBtn({
    super.key,
    required this.onPressed,
    required this.icon,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onPressed,
      child: Container(
        width: 45,
        height: 45,
        decoration: BoxDecoration(
            color: Theme.of(context).colorScheme.primary,
            borderRadius: BorderRadius.circular(12)),
        child: Icon(
          icon,
          size: 30,
          color: Theme.of(context).colorScheme.primaryContainer,
        ),
      ),
    );
  }
}
