import 'package:flutter/material.dart';
import 'package:learning/Note%20App/Model/note_model.dart';
import 'package:learning/Note%20App/create_note.dart';
import 'package:learning/Note%20App/delete_note.dart';

class NotePage extends StatelessWidget {
  NotePage({super.key});

  final notes = [
    NewList(
        noteID: "1",
        noteTitle: "Note 1",
        noteDateTime: DateTime.now(),
        latestEditDateTime: DateTime.now()),
    NewList(
        noteID: "2",
        noteTitle: "Note 2",
        noteDateTime: DateTime.now(),
        latestEditDateTime: DateTime.now()),
    NewList(
        noteID: "3",
        noteTitle: "Note 3",
        noteDateTime: DateTime.now(),
        latestEditDateTime: DateTime.now()),
    NewList(
        noteID: "4",
        noteTitle: "Note 4",
        noteDateTime: DateTime.now(),
        latestEditDateTime: DateTime.now()),
    NewList(
        noteID: "5",
        noteTitle: "Note 5",
        noteDateTime: DateTime.now(),
        latestEditDateTime: DateTime.now()),
  ];

  String formatDateTime(DateTime dateTime) {
    return "${dateTime.day}/${dateTime.month}/${dateTime.year}";
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: const Text('TEST API'),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.of(context).push(
              MaterialPageRoute(builder: ((context) => const CreateNote())));
        },
        child: const Icon(Icons.add),
      ),
      body: ListView.separated(
        itemCount: notes.length,
        separatorBuilder: ((context, index) => const Divider()),
        itemBuilder: (context, index) {
          return Dismissible(
            key: ValueKey(notes[index].noteID),
            direction: DismissDirection.startToEnd,
            confirmDismiss: (direction) async {
              final result = await showDialog(
                  context: context, builder: (context) => const DeleteNote());
              print(result);
              return result;
            },
            background: Container(
              color: Colors.red,
              padding: const EdgeInsets.only(left: 16),
              child: const Align(
                  alignment: Alignment.centerLeft,
                  child: Icon(
                    Icons.delete,
                    color: Colors.green,
                  )),
            ),
            child: ListTile(
                leading: Text(notes[index].noteID),
                title: Text(notes[index].noteTitle),
                subtitle: Text(
                    "Last Edited on ${formatDateTime(notes[index].latestEditDateTime)}"),
                trailing: Text(formatDateTime(notes[index].noteDateTime)),
                onTap: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: ((context) =>
                          CreateNote(noteID: notes[index].noteID)),
                    ),
                  );
                }),
          );
        },
      ),
    );
  }
}
