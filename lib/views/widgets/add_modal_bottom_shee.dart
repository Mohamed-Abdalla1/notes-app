import 'package:flutter/material.dart';
import 'package:notes_app/views/widgets/custom_button.dart';
import 'package:notes_app/views/widgets/custom_textfield.dart';
import 'package:notes_app/views/widgets/note_form.dart';

class AddModalButtomSheet extends StatelessWidget {
  const AddModalButtomSheet({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 16.0, vertical: 32),
      child: SingleChildScrollView(
        child: const NoteForm(),
      ),
    );
  }
}


