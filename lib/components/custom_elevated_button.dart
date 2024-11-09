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
        backgroundColor: const WidgetStatePropertyAll(Color(0xFF62FCD7 )),
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
        'Add',
        style: Theme.of(context).textTheme.bodyMedium?.
        copyWith(
        fontWeight:FontWeight.bold,
        color: Colors.black87
        ),
      )
    );
  }
}
