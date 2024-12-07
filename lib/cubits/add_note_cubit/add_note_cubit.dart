import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive/hive.dart';
import 'package:notes_app/constants.dart';
import 'package:notes_app/cubits/add_note_cubit/add_note_state.dart';
import 'package:notes_app/models/note_model.dart';

class AddNoteCubit extends Cubit<AddNoteState>{
  AddNoteCubit() : super(AddNoteInitialState());
  addNote (NoteModel noteModel)async{
    emit(AddNoteLoadingState());
    try{
      var box= Hive.box(kNotesBox);
      box.add(noteModel);
      emit(AddNoteSuccessState());
    }catch(e){
      emit(AddNoteFailureState());
    }
  }

}