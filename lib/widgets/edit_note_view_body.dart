import 'package:flutter/material.dart';
import 'package:note/widgets/custom_app_bar.dart';
import 'package:note/widgets/custom_text_feild.dart';

class EditNoteViewBody extends StatelessWidget {
  const EditNoteViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 16),
        child: Column(
          children: [
            SizedBox(
              height: 40,
            ),
            CustomAppBar(
              icon: Icons.check,
              title: 'Edit Note',
            ),
            SizedBox(
              height: 20,
            ),
            CustomTextFeild(hintText: 'Title'),
            SizedBox(
              height: 20,
            ),
            CustomTextFeild(
              hintText: 'content',
              maxLines: 5,
            ),
          ],
        ),
      ),
    );
  }
}
