
import 'package:flutter/material.dart';
import 'package:notes_app/widgets/add_text_field.dart';
import 'package:notes_app/widgets/sheet_button.dart';

class AddNoteForm extends StatefulWidget {
  const AddNoteForm({super.key});

  @override
  State<AddNoteForm> createState() => _AddNoteFormState();
}

class _AddNoteFormState extends State<AddNoteForm> {
  final GlobalKey<FormState> formKey = GlobalKey();
  AutovalidateMode autovalidateMode = AutovalidateMode.disabled;
  String? title, content;
  @override
  Widget build(BuildContext context) {
    return Form(
      key: formKey,
      autovalidateMode: autovalidateMode,
      child: Column(
        children: [
          AddTextField(
            hint: "Title",
            onSaved: (value) {
              title = value;
            },
          ),
          AddTextField(
            hint: "Content",
            maxLines: 5,
            onSaved: (value) {
              content = value;
            },
          ),
          SizedBox(height: 55),
          SheetButton(
            onTap: () {
              if (formKey.currentState!.validate()) {
                formKey.currentState!.save();
              } else {
                autovalidateMode = AutovalidateMode.always;
                setState(() {
                  
                });
              }
            },
          ),
        ],
      ),
    );
  }
}
