import 'package:flutter/material.dart';

import '../../components/custom_note_item.dart';

class NotesListView extends StatelessWidget {
  const NotesListView({super.key});
  static const List<Color> colorsList=[
    Color(0xFFFFC240),
    Color(0xFF9AFFB6),
    Color(0xFF93D0FF),
    Color(0xFFFF8B9C),
  ];
  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      itemCount: 5,
      itemBuilder: (context, index) {
        return CustomNoteItem(color: colorsList[index%colorsList.length],);
      },
      separatorBuilder: (context, index) => const SizedBox(height: 5,),

    );
  }
}
