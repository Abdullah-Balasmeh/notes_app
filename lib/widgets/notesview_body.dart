import 'package:flutter/material.dart';

import 'package:notesapp/widgets/custom_appbar.dart';
import 'package:notesapp/widgets/custom_note_item.dart';

class NotesViewsBody extends StatelessWidget {
  const NotesViewsBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(
        horizontal: 24,
      ),
      child: Column(
        children: [
          SizedBox(
            height: 55,
          ),
          CutsomAppBar(),
          NotesItem(),
        ],
      ),
    );
  }
}
