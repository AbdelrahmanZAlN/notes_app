import 'package:flutter/material.dart';
import 'package:notes_app/views/edit_note/edit_note_view_body.dart';
import '../../components/custom_app_bar.dart';

class EditNoteView extends StatelessWidget {
  static const String routeName = 'EditNoteView';
  const EditNoteView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 24,vertical: 42),
        child: Column(
          children: [
            CustomAppBar(title: 'Edit Notes',icon: Icons.check,),
            EditNoteViewBody(),
          ],
        ),
      ),
    );
  }
}
