import 'package:flutter/material.dart';

import '../../components/custom_elevated_button.dart';
import '../../components/custom_text_field.dart';

class AddNoteForm extends StatefulWidget {
  const AddNoteForm({
    super.key,
  });

  @override
  State<AddNoteForm> createState() => _AddNoteFormState();
}

class _AddNoteFormState extends State<AddNoteForm> {
  GlobalKey<FormState> formKey = GlobalKey();
  AutovalidateMode autoValidateMode= AutovalidateMode.disabled;
  String? title, subTitle;
  @override
  Widget build(BuildContext context) {
    return Form(
      key: formKey,
      autovalidateMode: autoValidateMode,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          CustomTextFormField(
            validator: (text){
              if(text?.trim().isEmpty ?? true){
                return 'required';
              }
              return null;
            },
            onSaved: (text){
              title=text;
            },
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
              subTitle=text;
            },
            label: 'Content',lines: 5,
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height * .04,
          ),
          CustomElevatedButton(
            onPressed: (){
              if(formKey.currentState!.validate()==true){
                formKey.currentState!.save();
              }
              else {
                autoValidateMode=AutovalidateMode.always;
              }
            },
            name: 'Add',)

        ],
      ),
    );
  }
}
