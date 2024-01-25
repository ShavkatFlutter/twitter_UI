import 'package:floating_action_wheel/floating_action_wheel.dart';
// import 'package:floating_action_wheel/wheel_button.dart';
import 'package:flutter/material.dart';


class FabMenuApp extends StatelessWidget {
  const FabMenuApp({super.key});

  @override
  Widget build(BuildContext context) {
    return FloatingActionWheel(
      buttons: [
        WheelButton(
          icon: Icons.sixty_fps_select,
          onPressed: (){},
        ),
        WheelButton(
          icon: Icons.keyboard_voice,
          onPressed: (){},
        ),
        WheelButton(
          icon: Icons.location_on,
          onPressed: (){},
        ),
        WheelButton(
          icon: Icons.gif_box_outlined,
          onPressed: (){},
        ),
        WheelButton(
          icon: Icons.edit,
          onPressed: (){},
        ),
        WheelButton(
          icon: Icons.add_photo_alternate_rounded,
          onPressed: (){},
        ),
      ],

    );
  }
}
