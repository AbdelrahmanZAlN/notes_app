import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:notes_app/views/edit_note/edit_note_view_body.dart';

class EditNoteView extends StatelessWidget {
  static const String routeName = 'EditNoteView';
  const EditNoteView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: EditNoteViewBody(),
    );
  }
}
