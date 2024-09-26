import 'package:flutter/material.dart';
import 'package:note/widgets/custom_app_bar.dart';
import 'package:note/widgets/custom_note_item.dart';

class NotesViewBody extends StatelessWidget {
  const NotesViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 24),
      child: Column(
        children: [
          SizedBox(
            height: 40,
          ),
          CustomAppBar(),
          SizedBox(
            height: 20,
          ),
          CustomNoteItem(),
        ],
      ),
    );
  }
}
