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
      onChanged: onChange,
      minLines: 1,
      maxLines: lines,
      //controller: controller,
      decoration: InputDecoration(
        floatingLabelBehavior: FloatingLabelBehavior.always,
        labelText: label,
        labelStyle: Theme.of(context).textTheme.bodyMedium,
        hintText: hint,
        hintStyle:Theme.of(context).textTheme.bodyMedium,
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(6)
        )
      ),
      keyboardType: keyboardType,
      obscureText: isPassword,
    );
  }
}
