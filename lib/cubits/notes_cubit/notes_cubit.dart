import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive/hive.dart';
import 'package:notes_app/constants.dart';
import 'package:notes_app/cubits/notes_cubit/notes_state.dart';
import 'package:notes_app/models/note_model.dart';

class NotesCubit extends Cubit<NotesState>{
  NotesCubit() : super(NotesInitialState());
  List<NoteModel>? notes;

  fetchAllNotes (){
    var box= Hive.box<NoteModel>(kNotesBox);
    notes = box.values.toList();
    emit(NotesSuccessState());
  }

}