import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notes_app/cubits/add_note_cubit/add_note_cubit.dart';
import 'package:notes_app/cubits/add_note_cubit/add_note_state.dart';
import 'package:notes_app/dialog_utils.dart';
import 'package:notes_app/views/home/add_note_form.dart';

import '../../cubits/notes_cubit/notes_cubit.dart';

class AddNoteBottomSheet extends StatelessWidget {
  const AddNoteBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => AddNoteCubit(),
      child: BlocConsumer<AddNoteCubit, AddNoteState>(
        listener: (context, state) {
          if (state is AddNoteFailureState) {
            DialogUtils.showMessage(context, state.errorMessage);
          }
          else if (state is AddNoteSuccessState) {
            Navigator.pop(context);
            DialogUtils.showToast(context, 'Note Added Successfully');
            BlocProvider.of<NotesCubit>(context).fetchAllNotes();
          }
        },
        builder: (context, state) {
          return AbsorbPointer(
            absorbing: state is AddNoteLoadingState? true:false,
            child: Container(
              padding: EdgeInsets.only(
                top: 32,
                left: 16,right: 16,
                bottom: MediaQuery.of(context).viewInsets.bottom
              ),
              child: const SingleChildScrollView(
                  child: AddNoteForm()
              ),
            ),
          );
        },
      ),
    );
  }
}
