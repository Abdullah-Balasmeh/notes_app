import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notesapp/cubits/notes_cubit/notes_cubit.dart';
import 'package:notesapp/models/note_model.dart';
import 'package:notesapp/widgets/custom_appbar.dart';
import 'package:notesapp/widgets/custom_text_field.dart';
import 'package:notesapp/widgets/edit_color_list.dart';

class EditNoteViewBody extends StatefulWidget {
  const EditNoteViewBody({super.key, required this.note});
  final NoteModel note;

  @override
  State<EditNoteViewBody> createState() => _EditNoteViewBodyState();
}

class _EditNoteViewBodyState extends State<EditNoteViewBody> {
  String? title, content;
  Widget? appBarTitle = const Text(
    'Edit Note',
    style: TextStyle(
      color: Colors.white70,
      fontSize: 32,
    ),
  );
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24),
      child: Column(
        children: [
          const SizedBox(
            height: 70,
          ),
          CutsomAppBar(
            onPressed: () {
              widget.note.title = title ?? widget.note.title;
              widget.note.subTitle = content ?? widget.note.subTitle;
              widget.note.save();
              BlocProvider.of<NotesCubit>(context).fetchAllNotes();
              Navigator.pop(context);
            },
            appBarTitle: appBarTitle,
            icon: Icons.check,
          ),
          const SizedBox(
            height: 32,
          ),
          CustomTextField(
            onChanged: (value) {
              title = value;
            },
            hint: 'Title',
            maxlines: 1,
          ),
          const SizedBox(
            height: 15,
          ),
          CustomTextField(
            onChanged: (value) {
              content = value;
            },
            hint: 'Content',
            maxlines: 5,
          ),
          const SizedBox(
            height: 15,
          ),
          EdirviewColorList(
            note: widget.note,
          ),
        ],
      ),
    );
  }
}
