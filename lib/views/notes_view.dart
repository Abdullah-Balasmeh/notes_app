import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:notesapp/widgets/notesview_body.dart';

class NotesViews extends StatelessWidget {
  const NotesViews({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
          backgroundColor: const Color(0xff2E2E2E),
          onPressed: () {},
          child: const Icon(
            FontAwesomeIcons.plus,
            color: Colors.white70,
          )),
      body: const NotesViewsBody(),
    );
  }
}
