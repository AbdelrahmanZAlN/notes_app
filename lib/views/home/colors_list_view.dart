import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notes_app/components/custom_color_item.dart';
import 'package:notes_app/cubits/add_note_cubit/add_note_cubit.dart';

class ColorsListView extends StatefulWidget {
  const ColorsListView({super.key});
  static const List<Color> colorsList=[
    Color(0xFFFFC240),
    Color(0xFF9AFFB6),
    Color(0xFF93D0FF),
    Color(0xFFFF8B9C),
    Color(0xFFA88BFF),
    Color(0xFFFFBF8B),
  ];

  @override
  State<ColorsListView> createState() => _ColorsListViewState();
}

class _ColorsListViewState extends State<ColorsListView> {
  int currIndex =0;
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      scrollDirection: Axis.horizontal,
        physics: const BouncingScrollPhysics(),
        itemCount: ColorsListView.colorsList.length,
        itemBuilder: (context, index){
          return Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8),
            child: GestureDetector(
              onTap: (){
                currIndex=index;
                BlocProvider.of<AddNoteCubit>(context).color = ColorsListView.colorsList[index];
                setState(() {

                });
              },
              child: CustomColorItem(color: ColorsListView.colorsList[index],
                  isActive: currIndex==index),
            ),
          );
        });
  }
}
