import 'package:flutter/material.dart';
import 'package:notes_app/views/home/add_note_form.dart';

class AddNoteBottomSheet extends StatelessWidget {
  const AddNoteBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 16,
        vertical: 30
      ),
      child: SingleChildScrollView(
        child: AddNoteForm()
      ),
    );
  }
}
