import 'package:flutter/material.dart';
import 'package:notes_app/components/custom_color_item.dart';
import 'package:notes_app/models/note_model.dart';

class EditNotesColorsList extends StatefulWidget {
  EditNotesColorsList({
    super.key,
    required this.noteModel,
  }) : scrollController = ScrollController();

  final ScrollController scrollController;
  final NoteModel noteModel;

  static const List<Color> colorsList = [
    Color(0xFFFFC240),
    Color(0xFF9AFFB6),
    Color(0xFF93D0FF),
    Color(0xFFFF8B9C),
    Color(0xFFA88BFF),
    Color(0xFFFFBF8B),
  ];

  @override
  State<EditNotesColorsList> createState() => _EditNotesColorsListState();
}

class _EditNotesColorsListState extends State<EditNotesColorsList> {
  @override
  Widget build(BuildContext context) {
    WidgetsBinding.instance.addPostFrameCallback((_) {
      final int currentIndex =
      EditNotesColorsList.colorsList.
        indexWhere((c) => c.value == widget.noteModel.color);


        widget.scrollController.animateTo(
          currentIndex * (60.0 + 16.0), // Adjust this value to match your item width + padding
          curve:Curves.bounceIn,
          duration: const Duration(milliseconds: 100)
        );
    });

    return ListView.builder(
      controller: widget.scrollController,
      physics: const BouncingScrollPhysics(),
      itemCount: EditNotesColorsList.colorsList.length,
      scrollDirection: Axis.horizontal,
      itemBuilder: (context, index) {
        return Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8),
          child: GestureDetector(
            onTap: (){
              widget.noteModel.color=EditNotesColorsList.colorsList[index].value;
              setState(() {

              });
            },
            child: CustomColorItem(
              color: EditNotesColorsList.colorsList[index],
              isActive: widget.noteModel.color == EditNotesColorsList.colorsList[index].value,
            ),
          ),
        );
      },
    );
  }
}
