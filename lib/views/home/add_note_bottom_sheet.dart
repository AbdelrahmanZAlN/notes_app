import 'package:flutter/material.dart';
import 'package:notes_app/components/custom_elevated_button.dart';
import 'package:notes_app/components/custom_text_field.dart';

class AddNoteBottomSheet extends StatelessWidget {
  const AddNoteBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 16,
        vertical: 30
      ),
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            CustomTextField(
                onChange: (text){},
                label: 'Title',
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * .03,
            ),
            CustomTextField(
                onChange: (text){},
                label: 'Content',lines: 5,
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * .04,
            ),
            CustomElevatedButton(onPressed: (){})

          ],
        ),
      ),
    );
  }
}
