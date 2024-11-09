import 'package:flutter/material.dart';

class CustomElevatedButton extends StatelessWidget {
  Function() onPressed;
  CustomElevatedButton({
    super.key,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(

      style: ButtonStyle(
        backgroundColor: WidgetStatePropertyAll(Color(0xFF243B61)),
        padding:const WidgetStatePropertyAll(EdgeInsets.symmetric(vertical: 10)),
        shape:  WidgetStatePropertyAll<RoundedRectangleBorder>(
          RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(8),
          )
        )
    ),
      onPressed: (){
        onPressed();
      },
      child: Text(
        'Update',
        style: Theme.of(context).textTheme.bodyMedium?.
        copyWith(
        fontWeight:FontWeight.w500,
        color: Colors.white
        ),
      )
    );
  }
}
