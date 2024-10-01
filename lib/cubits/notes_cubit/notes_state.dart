part of 'notes_cubit.dart';

abstract class NotesState {}

class NotesInitial extends NotesState {}

class NotesLoaded extends NotesState {}

class NotesSucuss extends NotesState {
  final List<NoteModel> notes;

  NotesSucuss({required this.notes});
}

class NotesFalier extends NotesState {
  final String errorMessage;

  NotesFalier({required this.errorMessage});
}
