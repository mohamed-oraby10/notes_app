import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notes_app/cubits/add_note_cubit/add_note_cubit.dart';
import 'package:notes_app/cubits/add_note_cubit/add_note_state.dart';
import 'package:notes_app/widgets/add_note_form.dart';

class AddNoteSheet extends StatefulWidget {
  const AddNoteSheet({super.key});

  @override
  State<AddNoteSheet> createState() => _AddNoteSheetState();
}

class _AddNoteSheetState extends State<AddNoteSheet> {
  bool isLoading = false;
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => AddNoteCubit(),
      child: Container(
        padding: EdgeInsets.all(16),
        child: BlocConsumer<AddNoteCubit, AddNoteState>(
          builder: (context, state) {
            return AbsorbPointer(
              absorbing: state is AddNoteLoading ? true : false,
              child: Padding(
                padding: EdgeInsets.only(
                  bottom: MediaQuery.of(context).viewInsets.bottom,
                ),
                child: SingleChildScrollView(child: AddNoteForm()),
              ),
            );
          },
          listener: (context, state) {
            if (state is AddNoteFailure) {
              print("failed ${state.errMessage}");
            }

            if (state is AddNoteSuccess) {
              Navigator.pop(context);
            }
          },
        ),
      ),
    );
  }
}
