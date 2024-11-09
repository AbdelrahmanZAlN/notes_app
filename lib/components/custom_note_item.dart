import 'package:flutter/material.dart';

class CustomNoteItem extends StatelessWidget {
  Color color;
  CustomNoteItem({
    super.key,
    required this.color
  });

  @override
  Widget build(BuildContext context) {
    return
      Container(
      padding: const EdgeInsets.only(
        left: 16,
        top: 10,
        bottom: 16
      ),
      width: double.infinity,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(16),
        color: color
      ),
      child: Column(
        children: [
          ListTile(
            title: Text('Flutter Tips',
              style: Theme.of(context).textTheme.headlineMedium?.copyWith(
                  color: Colors.black
              ),
            ),

            subtitle: Container(
              padding: const EdgeInsets.only(top: 8),
              child: Text('Build your career with Tharwat Samy',
                style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                    color: Colors.black45,
                  fontSize: 20
                ),
              ),
            ),
            isThreeLine: true,
            trailing: IconButton(
                onPressed: (){},
                icon: const Icon(Icons.delete,size: 32,color: Colors.black,)
            ),
          ),
          Container(
            padding: const EdgeInsets.only(right: 20),
              alignment: AlignmentDirectional.topEnd,
            child: Text('may 20 2022',
              style: Theme.of(context).textTheme.bodyMedium?.copyWith(
              color: Colors.black54,
              ),
            )
          )
        ],
      )
      /*Row(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
            flex: 3,
            child: Column(

              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('Flutter Tips',
                  style: Theme.of(context).textTheme.headlineMedium?.copyWith(
                    color: Colors.black
                  ),
                ),
                const SizedBox(height: 17,),
                Text('Build your career with \nTharwat Samy',
                  style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                    color: Colors.black45
                  ),
                ),

              ],
            ),
          ),
          const Expanded(
            flex: 2,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                SizedBox(height: 20,),
                Icon(Icons.restore_from_trash,size: 32,color: Colors.black,),
                SizedBox(height: 40,),
                Text('May 20,2022',
                  style: TextStyle(
                    fontSize: 16,
                    color: Colors.black45
                  )
                )
              ],
            ),
          )
        ],
      ),*/
    );
  }
}
