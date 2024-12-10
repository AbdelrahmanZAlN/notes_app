import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notes_app/cubits/notes_cubit/notes_cubit.dart';
import 'package:notes_app/dialog_utils.dart';
import 'package:notes_app/models/note_model.dart';
import 'package:notes_app/views/edit_note/edit_notes_colors_list.dart';
import '../../components/custom_app_bar.dart';
import '../../components/custom_text_field.dart';

class EditNoteViewBody extends StatefulWidget {
  const EditNoteViewBody({
    super.key, required this.noteModel,
  });
  final NoteModel noteModel ;

  @override
  State<EditNoteViewBody> createState() => _EditNoteViewBodyState();
}

class _EditNoteViewBodyState extends State<EditNoteViewBody> {
  String? title, subTitle;
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        CustomAppBar(
          title: 'Edit Notes',icon: Icons.check,
          onTap: (){
            if(title!=null||title!.trim().isNotEmpty){
              widget.noteModel.title=title!;
            }
            if(subTitle!=null||subTitle!.trim().isNotEmpty){
              widget.noteModel.subTitle=subTitle!;
            }
            widget.noteModel.save();
            DialogUtils.showToast(context, 'Note Edited Successfully');
            BlocProvider.of<NotesCubit>(context).fetchAllNotes();
            Navigator.pop(context);
          },
        ),
        SizedBox(
          height: MediaQuery.of(context).size.height * .03,
        ),
        CustomTextFormField(
          hint: widget.noteModel.title,
          onChange: (text){
            title=text;
          },
          validator: (text){
            if(text?.trim().isEmpty ?? true){
              return 'required';
            }
            return null;
          },
          onSaved: (text){
          },
          label: 'Title',
        ),
        SizedBox(
          height: MediaQuery.of(context).size.height * .03,
        ),
        CustomTextFormField(
          onChange: (text){
            subTitle=text;
          },
          validator: (text){
            if(text?.trim().isEmpty ?? true){
              return 'required';
            }
            return null;
          },
          onSaved: (text){
          },
          label: 'Content',lines: 5,
        ),
        SizedBox(
          height: MediaQuery.of(context).size.height * .04,
        ),
        SizedBox(
          height: 76,
          child: EditNotesColorsList(noteModel:widget.noteModel,)
        )

      ],
    );
  }
}
