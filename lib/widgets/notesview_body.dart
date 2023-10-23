// ignore_for_file: unused_element

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notesapp/cubits/notes_cubit/notes_cubit.dart';
import 'package:notesapp/widgets/custom_appbar.dart';
import 'package:notesapp/widgets/notes_list_view.dart';

class NotesViewsBody extends StatefulWidget {
  const NotesViewsBody({super.key});

  @override
  State<NotesViewsBody> createState() => _NotesViewsBodyState();
}

class _NotesViewsBodyState extends State<NotesViewsBody> {
  @override
  void initState() {
    BlocProvider.of<NotesCubit>(context).fetchAllNotes();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(
        horizontal: 24,
      ),
      child: Column(
        children: [
          SizedBox(
            height: 70,
          ),
          CutsomAppBar(
            title: 'Notes',
            icon: Icons.search,
          ),
          Expanded(
              child: Padding(
            padding: EdgeInsets.symmetric(vertical: 16),
            child: NotesListView(),
          )),
        ],
      ),
    );
  }
}
