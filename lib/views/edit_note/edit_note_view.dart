import 'package:flutter/material.dart';
import 'package:notes_app/models/note_model.dart';
import 'package:notes_app/views/edit_note/edit_note_view_body.dart';

class EditNoteView extends StatefulWidget {
  static const String routeName = 'EditNoteView';
  const EditNoteView({super.key});

  @override
  State<EditNoteView> createState() => _EditNoteViewState();
}

class _EditNoteViewState extends State<EditNoteView> {
  late NoteModel noteModel;
  @override
  Widget build(BuildContext context) {
     noteModel = ModalRoute.of(context)!.settings.arguments as NoteModel;
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24,vertical: 42),
        child: Column(
          children: [
            EditNoteViewBody(noteModel: noteModel),
          ],
        ),
      ),
    );
  }
}
