import 'package:flutter/material.dart';
import 'package:notes_app/my_theme/my_theme.dart';
import 'package:notes_app/views/home/home_view.dart';

import 'views/edit_note/edit_note_view.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: MyTheme().darkTheme,
      initialRoute: HomeView.routeName,
      routes: {
        HomeView.routeName : (_) => HomeView(),
        EditNoteView.routeName : (_) => EditNoteView(),

      },
    );
  }
}
