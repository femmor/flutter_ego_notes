import 'package:flutter/material.dart';

enum NoteMode {
  Editing,
  Adding,
}

class Note extends StatelessWidget {
  NoteMode _noteMode;

  Note(this._noteMode);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(_noteMode == NoteMode.Adding ? "Add note" : "Edit Note"),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(40.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "Any Thoughts?",
              style: TextStyle(
                fontSize: 30.0,
                fontWeight: FontWeight.w500,
              ),
            ),
            SizedBox(
              height: 20,
            ),
            TextField(
              decoration: InputDecoration(hintText: "Note Title"),
            ),
            TextField(
              decoration: InputDecoration(hintText: "Note Text"),
            ),
            SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                _NotesButton("Save", Theme.of(context).primaryColor,
                    () => Navigator.pop(context)),
                _NotesButton(
                    "Discard", Colors.grey, () => Navigator.pop(context)),
                _noteMode == NoteMode.Adding
                    ? Column()
                    : _NotesButton(
                        "Delete", Colors.red, () => Navigator.pop(context)),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

// Notes Button
class _NotesButton extends StatelessWidget {
  final String _title;
  final Color _color;
  final Function _onPressed;

  _NotesButton(this._title, this._color, this._onPressed);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: MaterialButton(
        onPressed: _onPressed,
        child: Text(
          _title,
          style: TextStyle(
            color: Colors.white,
          ),
        ),
        color: _color,
        height: 40.0,
        minWidth: 90.0,
      ),
    );
  }
}
