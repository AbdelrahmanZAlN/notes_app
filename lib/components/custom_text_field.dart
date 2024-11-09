import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  String label;
  String? hint;
  int lines;
  Function(String) onChange;
  TextInputType keyboardType;
  bool isPassword;
  //TextEditingController controller;
  CustomTextField({
    super.key,
    required this.onChange,
    required this.label,
    //required this.controller,

    this.hint,
    this.keyboardType=TextInputType.text,
    this.isPassword=false,
    this.lines=1

  });
  @override
  Widget build(BuildContext context) {

    return TextField(
      cursorColor: Theme.of(context).primaryColor,
      onChanged: onChange,
      minLines: lines,
      maxLines: lines,
      //controller: controller,
      decoration: InputDecoration(
        floatingLabelBehavior: FloatingLabelBehavior.auto,
        labelText: label,
        contentPadding: const EdgeInsets.all(20),
        labelStyle: Theme.of(context).textTheme.bodyMedium?.copyWith(
          color: Theme.of(context).primaryColor,
        ),
        hintText: hint,
        hintStyle:Theme.of(context).textTheme.bodyMedium,
          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(
              color: Theme.of(context).primaryColor,
            )
          ),
          border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(6)
        )
      ),
      keyboardType: keyboardType,
      obscureText: isPassword,
    );
  }
}
