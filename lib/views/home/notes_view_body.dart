import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notes_app/views/home/notes_list_view.dart';
import '../../components/custom_app_bar.dart';
import '../../cubits/notes_cubit/notes_cubit.dart';

class NotesViewBody extends StatefulWidget {
  const NotesViewBody({super.key});

  @override
  State<NotesViewBody> createState() => _NotesViewBodyState();
}

class _NotesViewBodyState extends State<NotesViewBody> {
  @override
  void initState() {
    super.initState();
    BlocProvider.of<NotesCubit>(context).fetchAllNotes();
  }
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
