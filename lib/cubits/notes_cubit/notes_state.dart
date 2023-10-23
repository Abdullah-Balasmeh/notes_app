part of 'notes_cubit.dart';

@immutable
sealed class NotesState {}

final class NotesInitial extends NotesState {}

final class NotesLoding extends NotesState {}

final class NotesSuccess extends NotesState {
  final List<NoteModel> note;

  NotesSuccess(this.note);
}

final class NotesFaliure extends NotesState {
  final String errorMessage;

  NotesFaliure(this.errorMessage);
}
