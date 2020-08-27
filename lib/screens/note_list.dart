import 'package:ego_note/screens/note.dart';
import 'package:flutter/material.dart';

class NoteList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Notes"),
        centerTitle: true,
        elevation: 0,
      ),
      body: ListView.builder(itemBuilder: (context, index) {
        return GestureDetector(
          onTap: () {
            Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => Note(NoteMode.Editing)));
          },
          child: Card(
            child: Padding(
              padding: const EdgeInsets.only(
                  top: 30.0, bottom: 30.0, left: 13.0, right: 22.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  _NoteTitle(),
                  SizedBox(
                    height: 10.0,
                  ),
                  _NoteText(),
                ],
              ),
            ),
          ),
        );
      }),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(context,
              MaterialPageRoute(builder: (context) => Note(NoteMode.Adding)));
        },
        child: Icon(
          Icons.add,
        ),
      ),
    );
  }
}

// Note title
class _NoteTitle extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Text(
      "Some title",
      style: TextStyle(
        fontSize: 30.0,
        fontWeight: FontWeight.bold,
      ),
    );
  }
}

// Note Text
class _NoteText extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Text(
      "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged.",
      style: TextStyle(color: Colors.grey.shade600, fontSize: 16.0),
      maxLines: 2,
      overflow: TextOverflow.ellipsis,
    );
  }
}
