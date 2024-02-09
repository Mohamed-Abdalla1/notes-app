import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:modal_progress_hud_nsn/modal_progress_hud_nsn.dart';
import 'package:notes_app/cubits/add_note_cubit/cubit/add_note_cubit.dart';
import 'package:notes_app/views/widgets/note_form.dart';

class AddModalButtomSheet extends StatelessWidget {
  const AddModalButtomSheet({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 32),
      child: BlocConsumer<AddNoteCubit, AddNoteState>(
        listener: (context, state) {
          if (state is AddNoteSuccess) {
            Navigator.pop(context);
          }
          if (state is AddNoteFailure) {
            print('error : ${state.errMessage}');
          }
        },
        builder: (context, state) {
          return const ModalProgressHUD(
            inAsyncCall: State is AddNoteLoading ? true : false,
            child: SingleChildScrollView(
              child: NoteForm(),
            ),
          );
        },
      ),
    );
  }
}
