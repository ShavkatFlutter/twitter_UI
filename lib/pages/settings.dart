import 'package:fab_circular_menu_plus/fab_circular_menu_plus.dart';
import 'package:flutter/material.dart';

class SettingsPage extends StatelessWidget {
  const SettingsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        floatingActionButtonLocation: FloatingActionButtonLocation.endDocked,
        floatingActionButton: FabCircularMenuPlus(
          ringDiameter: 300,
            ringDiameterLimitFactor: 50,
            ringWidth: 100,
            ringColor: Colors.blue[100],
            alignment: Alignment.bottomRight,
            children: [
              IconButton(onPressed: (){}, icon: Icon(Icons.add_photo_alternate)),
              IconButton(onPressed: (){}, icon: Icon(Icons.edit)),
              IconButton(onPressed: (){}, icon: Icon(Icons.multitrack_audio)),
              IconButton(onPressed: (){}, icon: Icon(Icons.gif_box)),
              IconButton(onPressed: (){}, icon: Icon(Icons.location_on)),
              IconButton(onPressed: (){}, icon: Icon(Icons.thirty_fps_select)),
              
            ]
        ),
        appBar: AppBar(
          title: Text("Security"),
          leading: IconButton(
              onPressed: (){
                Navigator.pop(context);
              },
              icon: Icon(Icons.arrow_back_ios)),
        ),
      ),
    );
  }
}
