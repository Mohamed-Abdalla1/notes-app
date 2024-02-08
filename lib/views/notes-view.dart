import 'package:flutter/material.dart';
import 'package:notes_app/views/widgets/note-view-body.dart';

class NotesView extends StatelessWidget {
  const NotesView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          showModalBottomSheet(
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
            context: context,
            builder: (context) {
              return AddModalButtomSheet();
            },
          );
        },
        child: Icon(Icons.add),
      ),
      body: NotesViewBody(),
    );
  }
}

class AddModalButtomSheet extends StatelessWidget {
  const AddModalButtomSheet({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
