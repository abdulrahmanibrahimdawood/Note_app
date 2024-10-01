import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:note/cubits/add_note_cubit/add_note_cubit.dart';
import 'package:note/models/note_model.dart';
import 'package:note/widgets/custom_buttom.dart';
import 'package:note/widgets/custom_text_feild.dart';

class AddNoteForm extends StatefulWidget {
  const AddNoteForm({
    super.key,
  });

  @override
  State<AddNoteForm> createState() => _AddNoteFormState();
}

class _AddNoteFormState extends State<AddNoteForm> {
  final GlobalKey<FormState> formKey = GlobalKey();
  AutovalidateMode autovalidateMode = AutovalidateMode.disabled;
  String? title, subTitle;
  @override
  Widget build(BuildContext context) {
    return Form(
      key: formKey,
      autovalidateMode: autovalidateMode,
      child: Column(
        children: [
          const SizedBox(
            height: 32,
          ),
          CustomTextFeild(
            onSaved: (value) {
              title = value;
            },
            hintText: 'title',
          ),
          const SizedBox(
            height: 16,
          ),
          CustomTextFeild(
            onSaved: (value) {
              subTitle = value;
            },
            hintText: 'content',
            maxLines: 5,
          ),
          const SizedBox(
            height: 32,
          ),
          BlocBuilder<AddNoteCubit, AddNoteState>(
            builder: (context, state) {
              return CustomButtom(
                isloading: state is AddNotLoading ? true : false,
                onTap: () {
                  if (formKey.currentState!.validate()) {
                    formKey.currentState!.save();
                    var noteModel = NoteModel(
                      title: title!,
                      subTitle: subTitle!,
                      date: DateTime.now().toString(),
                      color: Colors.blue.value,
                    );
                    BlocProvider.of<AddNoteCubit>(context).addNote(noteModel);
                  } else {
                    autovalidateMode = AutovalidateMode.always;
                    setState(() {});
                  }
                },
              );
            },
          ),
          const SizedBox(
            height: 16,
          ),
        ],
      ),
    );
  }
}
