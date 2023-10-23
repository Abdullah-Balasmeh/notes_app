part of 'notes_cubit.dart';

@immutable
sealed class NotesState {}

final class NotesInitial extends NotesState {}

final class NotesLoding extends NotesState {}

final class NoteSsuccess extends NotesState {
  final List<NoteModel> note;

  NoteSsuccess(this.note);
}

final class NotesFailuer extends NotesState {
  final String errorMessage;

  NotesFailuer(this.errorMessage);
}
