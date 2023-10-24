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

  IconData cIcon = Icons.search;
  Widget? appBarTitle = const Text(
    'Notes',
    style: TextStyle(
      color: Colors.white70,
      fontSize: 32,
    ),
  );

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: 24,
      ),
      child: Column(
        children: [
          const SizedBox(
            height: 70,
          ),
          CutsomAppBar(
            appBarTitle: appBarTitle,
            onPressed: () {
              setState(() {
                if (cIcon == Icons.search) {
                  cIcon = Icons.cancel;
                  appBarTitle = SizedBox(
                    width: 300,
                    child: TextField(
                      cursorColor: Colors.white70,
                      style: const TextStyle(color: Colors.white70),
                      maxLines: 1,
                      textInputAction: TextInputAction.go,
                      decoration: InputDecoration(
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(18),
                          borderSide: const BorderSide(color: Colors.white70),
                        ),
                        labelText: 'Search Note',
                        labelStyle: const TextStyle(
                            color: Colors.white70, fontSize: 24),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(18),
                          borderSide: const BorderSide(color: Colors.white70),
                        ),
                      ),
                    ),
                  );
                } else {
                  cIcon = Icons.search;
                  appBarTitle = const Text(
                    'Notes',
                    style: TextStyle(
                      color: Colors.white70,
                      fontSize: 32,
                    ),
                  );
                }
              });
            },
            icon: cIcon,
          ),
          const Expanded(
              child: Padding(
            padding: EdgeInsets.symmetric(vertical: 16),
            child: NotesListView(),
          )),
        ],
      ),
    );
  }
}

class SearchBar extends StatelessWidget {
  const SearchBar({super.key});

  @override
  Widget build(BuildContext context) {
    return const SearchBar();
  }
}
