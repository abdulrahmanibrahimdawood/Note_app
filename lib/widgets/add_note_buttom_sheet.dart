import 'package:flutter/material.dart';
import 'package:note/widgets/custom_text_feild.dart';

class AddNoteButtomSheet extends StatelessWidget {
  const AddNoteButtomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 16),
      child: Column(
        children: [
          SizedBox(
            height: 32,
          ),
          CustomTextFeild(
            hintText: 'title',
          ),
          SizedBox(
            height: 16,
          ),
          CustomTextFeild(
            hintText: 'content',
            maxLines: 5,
          ),
        ],
      ),
    );
  }
}
