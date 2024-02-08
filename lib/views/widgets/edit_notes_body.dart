import 'package:flutter/material.dart';
import 'package:notes_app/views/widgets/custom_appbar.dart';
import 'package:notes_app/views/widgets/custom_textfield.dart';

class EditNotesBody extends StatelessWidget {
  const EditNotesBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 16.0),
      child: Column(
        children: [
          SizedBox(
            height: 50,
          ),
          CustomAppBar(
              title: 'Edit Notes', icon: Icons.drive_file_rename_outline),
          SizedBox(
            height: 80,
          ),
          CustomTextField(title: 'Title'),
          SizedBox(
            height: 16,
          ),
          CustomTextField(
            title: 'Content',
            maxLines: 5,
          ),
        ],
      ),
    );
  }
}
