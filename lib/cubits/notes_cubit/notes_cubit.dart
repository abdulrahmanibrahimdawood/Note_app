import 'package:bloc/bloc.dart';
import 'package:hive/hive.dart';
import 'package:note/constants.dart';
import 'package:note/models/note_model.dart';
part 'notes_state.dart';

class NotesCubit extends Cubit<NotesState> {
  NotesCubit() : super(NotesInitial());
  featchAllNotes() {
    try {
      var notesBox = Hive.box<NoteModel>(kNotesBox);
      List<NoteModel> notes = notesBox.values.toList();

      emit(NotesSucuss(notes: notes));
    } catch (e) {
      emit(NotesFalier(errorMessage: e.toString()));
    }
  }
}
