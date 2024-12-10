import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notes_app/cubits/notes_cubit/notes_cubit.dart';
import 'package:notes_app/cubits/notes_cubit/notes_state.dart';
import 'package:notes_app/models/note_model.dart';

import '../../components/custom_note_item.dart';

class NotesListView extends StatefulWidget {
  const NotesListView({super.key});

  // static const List<Color> colorsList=[
  //   Color(0xFFFFC240),
  //   Color(0xFF9AFFB6),
  //   Color(0xFF93D0FF),
  //   Color(0xFFFF8B9C),
  //   Color(0xFFA88BFF),
  //   Color(0xFFFFBF8B),
  // ];

  @override
  State<NotesListView> createState() => _NotesListViewState();
}

class _NotesListViewState extends State<NotesListView> {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<NotesCubit, NotesState>(
      builder: (context, state) {
        List<NoteModel>notes=BlocProvider.of<NotesCubit>(context).notes??[];
      return ListView.separated(
      itemCount: notes.length,
      itemBuilder: (context, index) {
        return CustomNoteItem(noteModel: notes[index],);
      },
      separatorBuilder: (context, index) => const SizedBox(height: 5,),

    );
  },
);
  }
}
