import 'package:flutter/material.dart';

class UpgradePRO extends StatelessWidget {
  const UpgradePRO({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 60, vertical: 12),
      decoration: BoxDecoration(
        color: Colors.yellow[700],
        borderRadius: BorderRadius.circular(25),
      ),
      child: const Text('Upgrade to PRO'),
    );
  }
}
