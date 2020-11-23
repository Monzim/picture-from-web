import 'package:flutter/material.dart';
import 'package:m_anim_pic/imagesBuild.dart';

class ShowButtons extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      onPressed: () {
        showaDialoge(context);
      },
      child: Text(
        'Alert',
        style: TextStyle(color: Colors.black),
      ),
      backgroundColor: Colors.red,
    );
  }
}

showaDialoge(context) {
  showDialog(
    builder: (context) {
      return AlertDialog(
        title: Text(
            'All the images loading from web Please wait for loading them.'),
        actions: [
          FlatButton(
            onPressed: () {
              print('123');
              ImagesBuild();
            },
            child: Text('Thank You'),
          )
        ],
      );
    },
    context: context,
  );
}
