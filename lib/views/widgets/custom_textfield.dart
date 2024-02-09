import 'package:flutter/material.dart';
import 'package:notes_app/constants.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField(
      {super.key, required this.title, this.maxLines = 1, this.onSaved});
  final String title;
  final int maxLines;
  final void Function(String?)? onSaved;
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      onSaved: onSaved,
      validator: (value) {
        if (value?.isEmpty ?? true) {
          return 'field is reqired';
        } else {
          return null;
        }
      },
      maxLines: maxLines,
      cursorColor: kprimaryColor,
      decoration: InputDecoration(
        hintText: title,
        hintStyle: TextStyle(color: kprimaryColor),
        border: Border(),
        focusedBorder: Border(),
        enabledBorder: Border(),
      ),
    );
  }

  OutlineInputBorder Border() {
    return OutlineInputBorder(
        borderRadius: BorderRadius.circular(8),
        borderSide: BorderSide(
          color: Colors.white,
        ));
  }
}
