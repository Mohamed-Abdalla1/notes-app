import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notes_app/cubits/notes_cubit/cubit/notes_cubit.dart';
import 'package:notes_app/models/note_model.dart';
import 'package:notes_app/views/widgets/custom_note_item.dart';

class NotesListView extends StatelessWidget {
  const NotesListView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<NotesCubit, NotesCubitState>(
      builder: (context, state) {
        List<NoteModel> notesList =
            BlocProvider.of<NotesCubit>(context).notesList ?? [];
        return Expanded(
          child: ListView.builder(
            itemCount: notesList.length,
            itemBuilder: (context, index) {
              return CustomNoteItem(
                notesModel: notesList[index],
              );
            },
          ),
        );
      },
    );
  }
}
