import 'package:flutter/material.dart';

class SettingsCard extends StatelessWidget {
  const SettingsCard({
    super.key,
    required this.icon,
    required this.label,
    this.hasArrow = true,
  });
  final IconData icon;
  final String label;
  final bool hasArrow;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 12),
      margin: const EdgeInsets.only(bottom: 16),
      decoration: BoxDecoration(
        color: const Color(0xff333335),
        borderRadius: BorderRadius.circular(25),
      ),
      child: Row(
        children: [
          Icon(
            icon,
            color: Colors.white,
          ),
          const SizedBox(width: 8),
          Text(
            label,
            style: const TextStyle(fontSize: 18, color: Colors.white),
          ),
          const Spacer(),
          hasArrow
              ? const Icon(
                  Icons.arrow_forward_ios_outlined,
                  color: Colors.white,
                )
              : Container(),
        ],
      ),
    );
  }
}
