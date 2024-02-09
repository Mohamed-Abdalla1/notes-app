import 'package:flutter/material.dart';
import 'package:notes_app/views/widgets/custom_button.dart';
import 'package:notes_app/views/widgets/custom_textfield.dart';

class NoteForm extends StatefulWidget {
  const NoteForm({
    super.key,
  });

  @override
  State<NoteForm> createState() => _NoteFormState();
}

class _NoteFormState extends State<NoteForm> {
  GlobalKey<FormState> globalKey = GlobalKey();
  AutovalidateMode autovalidateMode = AutovalidateMode.disabled;
  String? title, subTitle;
  @override
  Widget build(BuildContext context) {
    return Form(
      key: globalKey,
      autovalidateMode: autovalidateMode,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          CustomTextField(
            title: 'Title',
            onSaved: (p0) {
              title = p0;
            },
          ),
          const SizedBox(
            height: 16,
          ),
          CustomTextField(
            title: 'Content',
            maxLines: 5,
            onSaved: (p0) {
              subTitle = p0;
            },
          ),
          const SizedBox(
            height: 50,
          ),
          CustomButton(
            text: 'ADD',
            onTap: () {
              if (globalKey.currentState!.validate()) {
                globalKey.currentState!.save();
              } else {
                autovalidateMode = AutovalidateMode.always;
                setState(() {});
              }
            },
          )
        ],
      ),
    );
  }
}
