import 'package:flutter/material.dart';
import 'package:notes_app/widgets/add_text_field.dart';
import 'package:notes_app/widgets/custom_app_bar.dart';

class EditNotesView extends StatelessWidget {
  const EditNotesView({super.key});
  static String id = "editNotesView";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 16,horizontal: 16),
        child: Column(
          children: [
            SizedBox(height: 25,),
            CustomAppBar(text: "Edit Note", barIcon: Icons.check),
            SizedBox(height: 20,),
            AddTextField(hint: "Title"),
            AddTextField(hint: "Content", maxLines: 5),
          ],
        ),
      ),
    );
  }
}
