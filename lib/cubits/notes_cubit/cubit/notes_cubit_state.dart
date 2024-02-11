part of 'notes_cubit.dart';

@immutable
sealed class NotesCubitState {}

final class NotesCubitInitial extends NotesCubitState {}

final class NotesLoading extends NotesCubitState {}

final class NotesSuccess extends NotesCubitState {
  final List<NoteModel> noteList;

  NotesSuccess({required this.noteList});
}

final class NotesFailure extends NotesCubitState {
  final String errMessage;

  NotesFailure({required this.errMessage});

}
