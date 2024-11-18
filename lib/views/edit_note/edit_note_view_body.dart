import 'package:flutter/material.dart';

import '../../components/custom_elevated_button.dart';
import '../../components/custom_text_field.dart';

class EditNoteViewBody extends StatelessWidget {
  const EditNoteViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        SizedBox(
          height: MediaQuery.of(context).size.height * .03,
        ),
        CustomTextFormField(
          validator: (text){
            if(text?.trim().isEmpty ?? true){
              return 'required';
            }
            return null;
          },
          onSaved: (text){},
          label: 'Title',
        ),
        SizedBox(
          height: MediaQuery.of(context).size.height * .03,
        ),
        CustomTextFormField(
          validator: (text){
            if(text?.trim().isEmpty ?? true){
              return 'required';
            }
            return null;
          },
          onSaved: (text){

          },
          label: 'Content',lines: 5,
        ),
        SizedBox(
          height: MediaQuery.of(context).size.height * .04,
        ),
        CustomElevatedButton(onPressed: (){}, name: 'Update',)

      ],
    );
  }
}
