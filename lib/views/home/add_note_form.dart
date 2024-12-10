import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intl/intl.dart';
import 'package:notes_app/cubits/add_note_cubit/add_note_cubit.dart';
import 'package:notes_app/cubits/add_note_cubit/add_note_state.dart';
import 'package:notes_app/models/note_model.dart';
import 'package:notes_app/views/home/colors_list_view.dart';
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
          const SizedBox(
            height: 76,
            child: ColorsListView(),
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height * .04,
          ),
          BlocBuilder<AddNoteCubit, AddNoteState>(
            builder: (context, state) {
              return CustomElevatedButton(
                isLoading: state is AddNoteLoadingState? true : false,
                onPressed: (){
                  if(formKey.currentState!.validate()==true){
                    formKey.currentState!.save();
                    var noteModel= NoteModel(
                        title: title!,
                        subTitle: subTitle!,
                        date: DateFormat('yyyy MMM dd').format(DateTime.now()),
                        color: BlocProvider.of<AddNoteCubit>(context).color!.value
                    );
                    BlocProvider.of<AddNoteCubit>(context).addNote(noteModel);
                  }
                  else {
                    autoValidateMode=AutovalidateMode.always;
                    setState(() {

                    });
                  }
                },
                name: 'Add',);
              },
)

        ],
      ),
    );
  }
}
