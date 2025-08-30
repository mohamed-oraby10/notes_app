import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notes_app/cubits/notes_cubit/notes_cubit.dart';
import 'package:notes_app/widgets/custom_app_bar.dart';
import 'package:notes_app/widgets/note_list_view.dart';

class NotesAppBody extends StatefulWidget {
  const NotesAppBody({super.key});

  @override
  State<NotesAppBody> createState() => _NotesAppBodyState();
}

class _NotesAppBodyState extends State<NotesAppBody> {
  @override
  void initState() {
    BlocProvider.of<NotesCubit>(context).fetchAllNotes();
    super.initState();
  }

  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 16),
      child: Column(
        children: [
          SizedBox(height: 25),
          CustomAppBar(text: "Notes", barIcon: Icons.search),
          SizedBox(height: 5),
          Expanded(child: NoteListView()),
        ],
      ),
    );
  }
}
