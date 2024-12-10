import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive/hive.dart';
import 'package:notes_app/constants.dart';
import 'package:notes_app/cubits/add_note_cubit/add_note_state.dart';
import 'package:notes_app/models/note_model.dart';


class AddNoteCubit extends Cubit<AddNoteState>{
  AddNoteCubit() : super(AddNoteInitialState());
  Color? color= const Color(0xFFFFC240);
  addNote (NoteModel noteModel)async{
    noteModel.color =color!.value;
    emit(AddNoteLoadingState());
    try{
      var box= Hive.box<NoteModel>(kNotesBox);
      box.add(noteModel);
      emit(AddNoteSuccessState());
    }catch(e){
      emit(AddNoteFailureState(e.toString()));
    }
  }

}