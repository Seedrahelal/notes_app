import 'package:flutter/material.dart';
import 'package:notes_app/widgets/add_note_buttom_sheet.dart';
import 'package:notes_app/widgets/constants.dart';
import 'package:notes_app/widgets/notes_view_body.dart';

class NotesView extends StatelessWidget {
  const NotesView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      floatingActionButton: FloatingActionButton(
          onPressed: () {
            showModalBottomSheet(
                isScrollControlled: true,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(16)),
                context: context,
                builder: (context) {
                  return const AddNoteBottomSheet();
                });
          },
          backgroundColor: kPrimaryColor,
          child: const Icon(Icons.add, size: 32)),
      body: const NotesViewBody(),
    );
  }
}
