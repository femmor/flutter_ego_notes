import 'package:flutter/material.dart';
import 'package:ego_note/screens/note_list.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: NoteList(),
    theme: ThemeData(
      primaryColor: Colors.indigo[700],
      accentColor: Colors.indigoAccent,
    ),
  ));
}
