import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive_flutter/adapters.dart';
import 'package:notes_app/constants.dart';
import 'package:notes_app/cubits/add_note_cubit/add_note_cubit.dart';
import 'package:notes_app/models/note_model.dart';
import 'package:notes_app/my_theme/my_theme.dart';
import 'package:notes_app/views/home/home_view.dart';
import 'views/edit_note/edit_note_view.dart';

void main() async{

  await Hive.initFlutter();
  await Hive.openBox(kNotesBox);
  Hive.registerAdapter(NoteModelAdapter());
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {

  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (context) => AddNoteCubit()),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: MyTheme().darkTheme,
        initialRoute: HomeView.routeName,
        routes: {
          HomeView.routeName : (_) => HomeView(),
          EditNoteView.routeName : (_) => EditNoteView(),

        },
      ),
    );
  }
}
