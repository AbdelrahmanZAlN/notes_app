import 'package:flutter/material.dart';
import 'package:notes_app/views/home/add_note_bottom_sheet.dart';
import 'package:notes_app/views/home/notes_view_body.dart';

class HomeView extends StatelessWidget {
  static const String routeName = 'HomeView';
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: (){
          showModalBottomSheet(
              context: context,
              builder: (_)=>AddNoteBottomSheet(),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.vertical(top: Radius.circular(16)),
            ),
          );
        },
        child: Icon(Icons.add,size: 30,),
        backgroundColor: Colors.blue,
        shape: CircleBorder(),
      ),
      body: NotesViewBody()
    );
  }
}

