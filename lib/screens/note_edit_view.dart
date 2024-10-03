import 'package:flutter/material.dart';
import 'package:note/models/note_model.dart';
import 'package:note/widgets/edit_note_view_body.dart';

class NoteEditView extends StatelessWidget {
  const NoteEditView({super.key, required this.note});
  final NoteModel note;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: EditNoteViewBody(
        note: note,
      ),
    );
  }
}
