import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notes_app/cubits/add_note_cubit/cubit/add_note_cubit.dart';
import 'package:notes_app/models/note_model.dart';
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
          BlocBuilder<AddNoteCubit, AddNoteState>(
            builder: (context, state) {
              return CustomButton(
                isLoading: state is AddNoteLoading ? true : false,
                text: 'ADD',
                onTap: () {
                  if (globalKey.currentState!.validate()) {
                    globalKey.currentState!.save();
                    var noteModel = NoteModel(
                        title: title!,
                        subTitle: subTitle!,
                        date: DateTime.now().toString(),
                        color: Colors.amber.value);
                    BlocProvider.of<AddNoteCubit>(context).addNote(noteModel);
                  } else {
                    autovalidateMode = AutovalidateMode.always;
                    setState(() {});
                  }
                },
              );
            },
          )
        ],
      ),
    );
  }
}
