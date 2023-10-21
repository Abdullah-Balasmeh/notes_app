import 'package:flutter/material.dart';
import 'package:notesapp/widgets/custom_appbar.dart';
import 'package:notesapp/widgets/custom_text_field.dart';

class EditNoteViewBody extends StatelessWidget {
  const EditNoteViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 24),
      child: Column(
        children: [
          SizedBox(
            height: 70,
          ),
          CutsomAppBar(
            title: 'Edit Note',
            icon: Icons.check,
          ),
          SizedBox(
            height: 32,
          ),
          CustomTextField(
            hint: 'Title',
            maxlines: 1,
          ),
          SizedBox(
            height: 15,
          ),
          CustomTextField(
            hint: 'Content',
            maxlines: 5,
          ),
        ],
      ),
    );
  }
}
