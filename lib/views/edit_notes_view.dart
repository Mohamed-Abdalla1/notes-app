import 'package:flutter/material.dart';
import 'package:notes_app/views/widgets/edit_notes_body.dart';

class EditNotesView extends StatelessWidget {
  const EditNotesView({super.key});
  static String id = 'editNotesView';
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: EditNotesBody(),
    );
  }
}
