import 'package:flutter/material.dart';
import 'package:notes_app/views/home/notes_list_view.dart';
import '../../components/custom_app_bar.dart';

class NotesViewBody extends StatelessWidget {
  const NotesViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(
          horizontal: 24,
          vertical: 42),
      child: Column(
        children: [
          CustomAppBar(title: 'Notes', icon: Icons.search,),
          //SizedBox(height: 5,),
          Expanded(
              child: NotesListView(),
          )

        ],
      ),
    );
  }

}
