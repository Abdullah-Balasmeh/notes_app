import 'package:flutter/material.dart';
import 'package:notesapp/widgets/cutom_icon.dart';

class CutsomAppBar extends StatelessWidget {
  const CutsomAppBar({super.key, required this.title, required this.icon});
  final String title;
  final IconData icon;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          title,
          style: const TextStyle(
            color: Colors.white70,
            fontSize: 32,
          ),
        ),
        const Spacer(),
        CustomIcon(
          icon: icon,
        )
      ],
    );
  }
}
