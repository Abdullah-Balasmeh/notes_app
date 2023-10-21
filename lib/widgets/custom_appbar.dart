import 'package:flutter/material.dart';
import 'package:notesapp/widgets/cutom_search_icon.dart';

class CutsomAppBar extends StatelessWidget {
  const CutsomAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      children: [
        Text(
          'Notes',
          style: TextStyle(
            color: Colors.white70,
            fontSize: 32,
          ),
        ),
        Spacer(),
        CustomSearchIcon()
      ],
    );
  }
}
