import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive_flutter/adapters.dart';
import 'package:notes_app/constants.dart';
import 'package:notes_app/cubits/notes_cubit/notes_cubit.dart';
import 'package:notes_app/models/note_model.dart';
import 'package:notes_app/my_theme/my_theme.dart';
import 'package:notes_app/simple_bloc_observer.dart';
import 'package:notes_app/views/home/home_view.dart';
import 'views/edit_note/edit_note_view.dart';

void main() async {
  Bloc.observer = SimpleBlocObserver();
  await Hive.initFlutter();
  Hive.registerAdapter(NoteModelAdapter());
  await Hive.openBox<NoteModel>(kNotesBox);
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {

  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => NotesCubit(),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: MyTheme().darkTheme,
        initialRoute: HomeView.routeName,
        routes: {
          HomeView.routeName: (_) => HomeView(),
          EditNoteView.routeName: (_) => EditNoteView(),

        },
      ),
    );
  }
}
