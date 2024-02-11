import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive/hive.dart';
import 'package:notes_app/constants.dart';
import 'package:notes_app/models/note_model.dart';

part 'notes_cubit_state.dart';

class NotesCubitCubit extends Cubit<NotesCubitState> {
  NotesCubitCubit() : super(NotesCubitInitial());

  fetchAllNotes(){
   

    try {
      var notesBox = Hive.box<NoteModel>(kNotesBox);
      List<NoteModel>noteList = notesBox.values.toList();
      emit(NotesSuccess(noteList: noteList));
    } catch (e) {
      emit(
        NotesFailure(
          errMessage: e.toString(),
        ),
      );
    }
  }
}
