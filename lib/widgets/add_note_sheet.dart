import 'package:flutter/material.dart';
import 'package:notes_app/widgets/add_text_field.dart';

class AddNoteSheet extends StatelessWidget {
  const AddNoteSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(16),
      child: Column(
        children: [
          AddTextField(hint: "Title",),
          AddTextField(hint: "Content",maxLines:5 ,)
        ],
      ),
    );
  }
}