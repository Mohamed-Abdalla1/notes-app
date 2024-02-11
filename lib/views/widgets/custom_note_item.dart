import 'package:flutter/material.dart';
import 'package:notes_app/models/note_model.dart';
import 'package:notes_app/views/edit_notes_view.dart';

class CustomNoteItem extends StatelessWidget {
  const CustomNoteItem({super.key, required this.notesModel, });
  final NoteModel notesModel;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) {
              return const EditNotesView();
            },
          ),
        );
      },
      child: Padding(
        padding: const EdgeInsets.only(
          top: 16.0,
        ),
        child: Container(
          padding: const EdgeInsets.symmetric(vertical: 24),
          decoration: BoxDecoration(
              color: Color(notesModel.color), borderRadius: BorderRadius.circular(16)),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              ListTile(
                title:  Text(
                 notesModel.title,
                  style:const TextStyle(fontSize: 20, color: Colors.black),
                ),
                subtitle: Padding(
                  padding: const EdgeInsets.symmetric(vertical: 24.0),
                  child: Text(
                    notesModel.subTitle,
                    style: TextStyle(
                        fontSize: 14, color: Colors.black.withOpacity(0.7)),
                  ),
                ),
                trailing: const Icon(
                  Icons.delete,
                  color: Colors.black,
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(right: 16.0),
                child: Text(
                  notesModel.date,
                  style: TextStyle(color: Colors.black.withOpacity(0.7)),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
