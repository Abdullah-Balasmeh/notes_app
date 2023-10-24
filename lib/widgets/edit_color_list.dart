import 'package:flutter/material.dart';
import 'package:notesapp/constans.dart';
import 'package:notesapp/models/note_model.dart';
import 'package:notesapp/widgets/color_list_view.dart';

class EdirviewColorList extends StatefulWidget {
  const EdirviewColorList({super.key, required this.note});
  final NoteModel note;
  @override
  State<EdirviewColorList> createState() => _EdirviewColorListState();
}

class _EdirviewColorListState extends State<EdirviewColorList> {
  late int cIndex;
  @override
  void initState() {
    cIndex = kColors.indexOf(Color(widget.note.color));
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 76,
      child: ListView.builder(
          itemCount: kColors.length,
          scrollDirection: Axis.horizontal,
          itemBuilder: (context, index) {
            return Padding(
              padding: const EdgeInsets.symmetric(horizontal: 3),
              child: GestureDetector(
                onTap: () {
                  cIndex = index;
                  widget.note.color = kColors[index].value;
                  setState(() {});
                },
                child: ColorItem(
                  color: kColors[index],
                  isSelected: cIndex == index,
                ),
              ),
            );
          }),
    );
  }
}
