import 'package:flutter/material.dart';

class NotesViews extends StatelessWidget {
  const NotesViews({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Notes',
          style: TextStyle(color: Colors.white70, fontSize: 34),
        ),
        actions: [
          Icon(
            Icons.search,
            size: 34,
          )
        ],
      ),
    );
  }
}
