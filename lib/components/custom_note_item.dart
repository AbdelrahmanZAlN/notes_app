import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notes_app/cubits/notes_cubit/notes_cubit.dart';
import 'package:notes_app/dialog_utils.dart';
import 'package:notes_app/models/note_model.dart';
import 'package:notes_app/views/edit_note/edit_note_view.dart';

class CustomNoteItem extends StatelessWidget {
  final NoteModel noteModel;
  const CustomNoteItem({
    super.key,
    required this.noteModel,
  });

  @override
  Widget build(BuildContext context) {
    return
      InkWell(
        onTap: (){
          Navigator.pushNamed(context, EditNoteView.routeName,arguments: noteModel);
        },
        child: Container(
        padding: const EdgeInsets.only(
          left: 16,
          top: 10,
          bottom: 16
        ),
        width: double.infinity,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(16),
          color: Color(noteModel.color)
        ),
        child: Column(
          children: [
            ListTile(
              title: Text(noteModel.title,
                style: Theme.of(context).textTheme.headlineMedium?.copyWith(
                    color: Colors.black
                ),
              ),

              subtitle: Container(
                padding: const EdgeInsets.only(top: 8),
                child: Text(noteModel.subTitle,
                  style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                      color: Colors.black45,
                    fontSize: 20
                  ),
                ),
              ),
              isThreeLine: true,
              trailing: IconButton(
                  onPressed: (){
                    noteModel.delete();
                    BlocProvider.of<NotesCubit>(context).fetchAllNotes();
                    DialogUtils.showToast(context, 'Note deleted successfully');
                  },
                  icon: const Icon(Icons.delete,size: 32,color: Colors.black,)
              ),
            ),
            Container(
              padding: const EdgeInsets.only(right: 20),
                alignment: AlignmentDirectional.topEnd,
              child: Text(noteModel.date,
                style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                color: Colors.black54,
                ),
              )
            )
          ],
        )
        /*Row(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Expanded(
              flex: 3,
              child: Column(

                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('Flutter Tips',
                    style: Theme.of(context).textTheme.headlineMedium?.copyWith(
                      color: Colors.black
                    ),
                  ),
                  const SizedBox(height: 17,),
                  Text('Build your career with \nTharwat Samy',
                    style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                      color: Colors.black45
                    ),
                  ),

                ],
              ),
            ),
            const Expanded(
              flex: 2,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  SizedBox(height: 20,),
                  Icon(Icons.restore_from_trash,size: 32,color: Colors.black,),
                  SizedBox(height: 40,),
                  Text('May 20,2022',
                    style: TextStyle(
                      fontSize: 16,
                      color: Colors.black45
                    )
                  )
                ],
              ),
            )
          ],
        ),*/
            ),
      );
  }
}
