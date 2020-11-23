import 'package:flutter/material.dart';
import 'package:m_anim_pic/imagesBuild.dart';
import 'package:m_anim_pic/actionsButton.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Animated Photos'),
          leading: Icon(Icons.photo_camera),
          actions: [
            // IconButton(icon: Icon(Icons.ac_unit), onPressed: () {}),
            PopupMenuButton(itemBuilder: (context) {
              return [
                // PopupMenuItem(
                //   child:
                //       Text('All the Images loading from Internet Please Wait'),
                // ),
                PopupMenuItem(
                  child: CheckedPopupMenuItem(
                    checked: true,
                    child: Text(
                        'All the Images loading from Internet Please Wait'),
                  ),
                )
              ];
            })
          ],
        ),
        body: Container(
          color: Colors.white54,
          child: ImagesBuild(),
        ),
        backgroundColor: Colors.lightBlue,
        // // floatingActionButton: FloatingActionButton(onPressed: () {}),
        // floatingActionButtonLocation:
        //     FloatingActionButtonLocation.miniEndDocked,
        //     floatingActionButton: FloatingActionButton(onPressed: (){

        //     }),
        floatingActionButton: ShowButtons(),
      ),
    );
  }
}
