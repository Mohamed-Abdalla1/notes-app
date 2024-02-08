import 'package:flutter/material.dart';
import 'package:notes_app/views/widgets/custom_note_item.dart';

class NotesListView extends StatelessWidget {
  const NotesListView({super.key});

  @override
  Widget build(BuildContext context) {
    List<Color> colors = [
      Color(0xffffcc80),
      Colors.green,
      Color.fromARGB(255, 11, 132, 197),
      Color.fromARGB(255, 181, 21, 230),
      Color.fromARGB(255, 223, 75, 80),
      Color.fromARGB(255, 78, 184, 33),
      Color.fromARGB(255, 216, 12, 148),
      Color.fromARGB(255, 205, 49, 24),
      Color.fromARGB(255, 156, 154, 152),
      Color.fromARGB(255, 81, 86, 157),
      Color.fromARGB(255, 90, 82, 127),
      Color.fromARGB(255, 136, 244, 5),
    ];
    return Expanded(
      child: ListView.builder(
        itemCount: colors.length,
        itemBuilder: (context, index) {
          return CustomNoteItem(
            color: colors[index],
          );
        },
      ),
    );
  }
}
